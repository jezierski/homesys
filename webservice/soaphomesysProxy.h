/* soaphomesysProxy.h
   Generated by gSOAP 2.8.7 from homesys.h

Copyright(C) 2000-2011, Robert van Engelen, Genivia Inc. All Rights Reserved.
The generated code is released under one of the following licenses:
1) GPL or 2) Genivia's license for commercial use.
This program is released under the GPL with the additional exemption that
compiling, linking, and/or using OpenSSL is allowed.
*/

#ifndef soaphomesysProxy_H
#define soaphomesysProxy_H
#include "soapH.h"

class SOAP_CMAC homesysProxy : public soap
{ public:
	/// Endpoint URL of service 'homesysProxy' (change as needed)
	const char *soap_endpoint;
	/// Constructor
	homesysProxy();
	/// Constructor with copy of another engine state
	homesysProxy(const struct soap&);
	/// Constructor with endpoint URL
	homesysProxy(const char *url);
	/// Constructor with engine input+output mode control
	homesysProxy(soap_mode iomode);
	/// Constructor with URL and input+output mode control
	homesysProxy(const char *url, soap_mode iomode);
	/// Constructor with engine input and output mode control
	homesysProxy(soap_mode imode, soap_mode omode);
	/// Destructor frees deserialized data
	virtual	~homesysProxy();
	/// Initializer used by constructors
	virtual	void homesysProxy_init(soap_mode imode, soap_mode omode);
	/// Delete all deserialized data (uses soap_destroy and soap_end)
	virtual	void destroy();
	/// Disables and removes SOAP Header from message
	virtual	void soap_noheader();
	/// Get SOAP Header structure (NULL when absent)
	virtual	const SOAP_ENV__Header *soap_header();
	/// Get SOAP Fault structure (NULL when absent)
	virtual	const SOAP_ENV__Fault *soap_fault();
	/// Get SOAP Fault string (NULL when absent)
	virtual	const char *soap_fault_string();
	/// Get SOAP Fault detail as string (NULL when absent)
	virtual	const char *soap_fault_detail();
	/// Close connection (normally automatic, except for send_X ops)
	virtual	int soap_close_socket();
	/// Force close connection (can kill a thread blocked on IO)
	virtual	int soap_force_close_socket();
	/// Print fault
	virtual	void soap_print_fault(FILE*);
#ifndef WITH_LEAN
	/// Print fault to stream
#ifndef WITH_COMPAT
	virtual	void soap_stream_fault(std::ostream&);
#endif

	/// Put fault into buffer
	virtual	char *soap_sprint_fault(char *buf, size_t len);
#endif

	/// Web service operation 'getCurrentTime' (returns error code or SOAP_OK)
	virtual	int getCurrentTime(std::string &time) { return getCurrentTime(NULL, NULL, time); }
	virtual	int getCurrentTime(const char *endpoint, const char *soap_action, std::string &time);
};
#endif