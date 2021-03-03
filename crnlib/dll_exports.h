#pragma once

#ifdef DLL
#if defined(ANDROID) || __linux__
	#define DLL_EXPORT extern "C"
	#define DLL_API
#else
	#define DLL_EXPORT extern "C" __declspec(dllexport)
	#define DLL_API __cdecl
#endif
#else
#define DLL_EXPORT 
#define DLL_API
#endif