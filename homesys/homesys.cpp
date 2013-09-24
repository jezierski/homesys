#include <stdlib.h>

#include "homesys.h"

#include "CActionsChain.h"

CApplication::CApplication() {
    configuration = CConfiguration::getInstance();
    devicesConfig = CDevicesConfig::getInstance();
    log = CLog::getInstance();
}

CApplication::~CApplication() {

}

void CApplication::assignSlots() {
    for (CDevice *device : deviceManager->getDevices()) {
        device->sensorEvent.Connect(actionTranslator, &CActionTranslator::updateDeviceState);
    }
    timer->timerEvent.Connect(actionTranslator, &CActionTranslator::updateTimerStack);
}

void CApplication::run() {

    log->info("Server starting...");
    //    cout<<"starting GSOAP..."<<endl;
    
    //        server.start();

    CCanSimpleSwitchActor actorSwitch;
    CCanSimpleSwitchSensor sensorSwitch;
    CCanRGBActor rgbDriver;

    try {
        soapServer = new CSoapServer();
        can232device = new CCan232();
        can232device->initCan232Device();
        actorSwitch.setCommunicationProtocol(can232device);
        sensorSwitch.setCommunicationProtocol(can232device);
        rgbDriver.setCommunicationProtocol(can232device);

        deviceManager = new CDeviceManager();
        deviceManager->addCategoryDevice(&actorSwitch);
        deviceManager->addCategoryDevice(&sensorSwitch);
        deviceManager->addCategoryDevice(&rgbDriver);

        actionManager = new CActionManager();
        actionManager->assignDeviceManager(deviceManager);
        
        timer = new CTimer();

        actionTranslator = new CActionTranslator();
        actionTranslator->assignActionManager(actionManager);
        actionTranslator->assignTimer(timer);
        actionTranslator->loadOperations();
        
        

        deviceManager->initialize();
        new thread(&CSoapServer::start, soapServer);
    } catch (string err) {
        log->error("Starting system failed: " + err);
        exit(0);
    }

    new thread(&CActionManager::runActionManager, actionManager);
    new thread(&CDeviceManager::runInThreadGlobalRemoteAction, deviceManager, ACTION_READ_NEW_STATUS, Blob());
    new thread(&CActionTranslator::translateActions, actionTranslator);
    new thread(&CTimer::run, timer);
    assignSlots();


    string x = "";
    SDeviceDescription global;
    global.category = EDeviceCategory::ALL;
    Blob null;
    while (1) {
        cout << "\r\n?? ";
        cin >> x;
        if (x == "help") {
            cout << "db\t - write default settings to DataBase" << endl;
            cout << "reset\t - reset devices addresses" << endl;
            cout << "search\t - search devices without address" << endl;
            cout << "resstat\t - reset sensors statuses" << endl;
            cout << "newstat\t - check sensors new statuses" << endl;
            cout << "trans\t - load operations" << endl;
            cout << "chain\t - load chain actions" << endl;
            cout << "list\t - print devices list" << endl;
            cout << "ping\t - ping device" << endl;
            cout << "check\t - check device availability" << endl;
            cout << "name\t - set device name" << endl;
            cout << "set\t - set actor status" << endl;
            cout << "sensor\t - read sensor status" << endl;
            cout << "rgbmode\t - set RGB mode" << endl;
            cout << "rgbspeed\t - set RGB speed" << endl;
            cout << "rgbr\t - set RGB red" << endl;
            cout << "rgbg\t - set RGB green" << endl;
            cout << "rgbb\t - set RGB blue" << endl;
            cout << "rgball\t - set RGB all" << endl;
        }
        if (x == "db") {
            try { //@TODO objac trykaczem funkcje inicjalizacyjne
                dbConfig();

            } catch (string e) {
                cout << " dbConfig: " << e << endl;
            }
        }
        if (x == "reset") {
            SDeviceDescription s;
            cout << "cat (0-all, 1-actor, 2-sensor)? ";
            int c;
            cin >> c;
            switch (c) {
                case 1:
                    s.category = EDeviceCategory::A_SIMPLE_SWITCH;
                    break;
                case 2:
                    s.category = EDeviceCategory::S_SIMPLE_SWITCH;
                    break;
                default:
                    s = global;
            }
            deviceManager->invokeRemoteAction(s, ACTION_RESET_CATEGORY, null);
        }

        if (x == "resstat") {
            deviceManager->invokeRemoteAction(global, ACTION_RESET_ALL_STATUS, null);
        }

        if (x == "newstat") {
            deviceManager->invokeRemoteAction(global, ACTION_READ_NEW_STATUS, null);
        }

        if (x == "trans") {
            try {
                actionTranslator->loadOperations();
            } catch (string e) {
                cout << e << endl;
            }
        }

        if (x == "chain") {
            try {
                deviceManager->loadActionsChain();
            } catch (string e) {
                cout << e << endl;
            }
        }

        if (x == "list") {
            SDeviceDescription s;
            cout << "cat (0-all, 1-actor, 2-sensor)? ";
            int c;
            cin >> c;
            switch (c) {
                case 1:
                    s.category = EDeviceCategory::A_SIMPLE_SWITCH;
                    break;
                case 2:
                    s.category = EDeviceCategory::S_SIMPLE_SWITCH;
                    break;
                default:
                    s = global;
            }
            deviceManager->invokeRemoteAction(s, ACTION_LIST, null);
        }

        if (x == "search") {
            cout << "cat (0-all, 1-actor, 2-sensor)? ";
            int c;
            SDeviceDescription s;
            cin >> c;
            switch (c) {
                case 0:
                    s = global;
                    break;
                case 1:
                    s.category = EDeviceCategory::A_SIMPLE_SWITCH;
                    break;
                case 2:
                    s.category = EDeviceCategory::S_SIMPLE_SWITCH;
                    break;
            }
            deviceManager->invokeRemoteAction(s, ACTION_SEARCH_DEVICES, null);
        }



        if (x == "ping") {
            SDeviceDescription s;
            cout << "guid ? ";
            unsigned int g;
            cin >> g;
            cout << "luid ? ";
            unsigned int l;
            cin >> l;
            cout << "cat (1-actor, 2-sensor, 3-rgb)? ";
            int c;
            cin >> c;
            switch (c) {
                case 1:
                    s.category = EDeviceCategory::A_SIMPLE_SWITCH;
                    break;
                case 2:
                    s.category = EDeviceCategory::S_SIMPLE_SWITCH;
                    break;
                case 3:
                    s.category = EDeviceCategory::A_RGB_DRIVER;
                    break;
            }
            s.guid = g;
            s.luid = (unsigned char) l;
            deviceManager->invokeRemoteAction(s, ACTION_PING, null);
        }

        if (x == "check") {
            cout << "cat (0-all, 1-actor, 2-sensor)? ";
            int c;
            SDeviceDescription s;
            cin >> c;
            switch (c) {
                case 0:
                    s = global;
                    break;
                case 1:
                    s.category = EDeviceCategory::A_SIMPLE_SWITCH;
                    break;
                case 2:
                    s.category = EDeviceCategory::S_SIMPLE_SWITCH;
                    break;
            }
            deviceManager->invokeRemoteAction(s, ACTION_CHECK_AVAILABILITY, null);
        }

        if (x == "name") {
            SDeviceDescription s;
            cout << "guid ? ";
            unsigned int g;
            cin >> g;
            cout << "luid ? ";
            unsigned int l;
            cin >> l;
            cout << "cat (1-actor, 2-sensor)? ";
            int c;
            cin >> c;
            switch (c) {
                case 1:
                    s.category = EDeviceCategory::A_SIMPLE_SWITCH;
                    break;
                case 2:
                    s.category = EDeviceCategory::S_SIMPLE_SWITCH;
                    break;
            }
            cout << "name ? ";
            string n;
            cin >> n;
            s.guid = g;
            s.luid = (unsigned char) l;
            Blob b;
            b[BLOB_DEVICE_NAME].put<string>(n);
            deviceManager->invokeRemoteAction(s, ACTION_SET_NAME, b);
        }

        if (x == "set") {
            SDeviceDescription s;
            cout << "guid ? ";
            unsigned int g;
            cin >> g;
            cout << "luid ? ";
            unsigned int l;
            cin >> l;
            s.category = EDeviceCategory::A_SIMPLE_SWITCH;

            cout << "value ? ";
            int n;
            cin >> n;
            Params par;
            par.push_back((unsigned char) n);
            s.guid = g;
            s.luid = (unsigned char) l;
            Blob b;
            b[BLOB_ACTION_PARAMETER].put<Params>(par);
            deviceManager->invokeRemoteAction(s, ACTION_SET_OUTPUT, b);

        }

        if (x == "rgbr") {
            SDeviceDescription s;
            cout << "guid ? ";
            unsigned int g;
            cin >> g;
            cout << "luid ? ";
            unsigned int l;
            cin >> l;
            s.category = EDeviceCategory::A_RGB_DRIVER;

            cout << "value ? (0-0xfff)";
            unsigned int n;
            cin >> n;
            s.guid = g;
            s.luid = (unsigned char) l;
            Blob b;
            b[BLOB_RGB_CHANNEL].put<unsigned int>(n);
            deviceManager->invokeRemoteAction(s, ACTION_SET_CHANNEL_RED, b);

        }

        if (x == "rgbg") {
            SDeviceDescription s;
            cout << "guid ? ";
            unsigned int g;
            cin >> g;
            cout << "luid ? ";
            unsigned int l;
            cin >> l;
            s.category = EDeviceCategory::A_RGB_DRIVER;

            cout << "value ? (0-0xfff)";
            unsigned int n;
            cin >> n;
            s.guid = g;
            s.luid = (unsigned char) l;
            Blob b;
            b[BLOB_RGB_CHANNEL].put<unsigned int>(n);
            deviceManager->invokeRemoteAction(s, ACTION_SET_CHANNEL_GREEN, b);

        }

        if (x == "rgbb") {
            SDeviceDescription s;
            cout << "guid ? ";
            unsigned int g;
            cin >> g;
            cout << "luid ? ";
            unsigned int l;
            cin >> l;
            s.category = EDeviceCategory::A_RGB_DRIVER;

            cout << "value ? (0-0xfff)";
            unsigned int n;
            cin >> n;
            s.guid = g;
            s.luid = (unsigned char) l;
            Blob b;
            b[BLOB_RGB_CHANNEL].put<unsigned int>(n);
            deviceManager->invokeRemoteAction(s, ACTION_SET_CHANNEL_BLUE, b);

        }

        if (x == "rgball") {
            SDeviceDescription s;
            cout << "guid ? ";
            unsigned int g;
            cin >> g;
            cout << "luid ? ";
            unsigned int l;
            cin >> l;
            s.category = EDeviceCategory::A_RGB_DRIVER;

            cout << "R value ? (0-0xfff)";
            vector<unsigned int> values;
            unsigned int n;
            cin >> n;
            values.push_back(n);
            cout << "G value ? (0-0xfff)";
            cin >> n;
            values.push_back(n);
            cout << "B value ? (0-0xfff)";
            cin >> n;
            values.push_back(n);
            s.guid = g;
            s.luid = (unsigned char) l;
            Blob b;
            b[BLOB_RGB_ALL].put < vector<unsigned int >> (values);
            deviceManager->invokeRemoteAction(s, ACTION_SET_CHANNEL_ALL, b);

        }

        if (x == "rgbmode") {
            SDeviceDescription s;
            cout << "guid ? ";
            unsigned int g;
            cin >> g;
            cout << "luid ? ";
            unsigned int l;
            cin >> l;
            s.category = EDeviceCategory::A_RGB_DRIVER;

            cout << "value ? (0-OFF, 1-ALL_AUTO, 2-CHAIN_AUTO, 3-RND, 4-SIMPLE)";
            int n;
            cin >> n;
            Params par;
            par.push_back((unsigned char) n);
            s.guid = g;
            s.luid = (unsigned char) l;
            Blob b;
            b[BLOB_ACTION_PARAMETER].put<Params>(par);
            deviceManager->invokeRemoteAction(s, ACTION_SET_MODE, b);

        }

        if (x == "rgbspeed") {
            SDeviceDescription s;
            cout << "guid ? ";
            unsigned int g;
            cin >> g;
            cout << "luid ? ";
            unsigned int l;
            cin >> l;
            s.category = EDeviceCategory::A_RGB_DRIVER;

            cout << "value ? (0-2)";
            int n;
            cin >> n;
            Params par;
            par.push_back((unsigned char) n);
            s.guid = g;
            s.luid = (unsigned char) l;
            Blob b;
            b[BLOB_ACTION_PARAMETER].put<Params>(par);
            deviceManager->invokeRemoteAction(s, ACTION_SET_SPEED, b);

        }

        if (x == "sensor") {
            SDeviceDescription s;
            cout << "guid ? ";
            unsigned int g;
            cin >> g;
            cout << "luid ? ";
            unsigned int l;
            cin >> l;
            s.category = EDeviceCategory::S_SIMPLE_SWITCH;

            s.guid = g;
            s.luid = (unsigned char) l;
            deviceManager->invokeRemoteAction(s, ACTION_READ_SENSOR_STATUS, null);

        }

        x = "";
        msleep(100);
    }
}

void CApplication::dbConfig() {
    log->info("Loading database...");
    map<string, string> can232config;
    can232config["portName"] = "/dev/ttyAMA0";
    can232config["CANspeed"] = "160000";
    configuration->updateList<string>("can232", can232config);

    map<string, unsigned int>canConfig;
    canConfig["acceptMask0"] = 0x3ff;
    canConfig["acceptMask1"] = 0x3ff;
    canConfig["acceptFilter0"] = 200;
    canConfig["acceptFilter1"] = 200;
    canConfig["acceptFilter2"] = 200;
    canConfig["acceptFilter3"] = 200;
    canConfig["acceptFilter4"] = 200;
    canConfig["acceptFilter5"] = 200;

    configuration->updateList<unsigned int>("canConfig", canConfig);


    log->success("Loading database success");
}

int main() {

    CApplication *application = new CApplication();

    application->run();

    return 0;
}
