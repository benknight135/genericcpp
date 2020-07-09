#ifdef GENERICCLASS_EXPORT
#define GENERICCLASS_EXPORTS __declspec(dllexport)
#else
#define GENERICCLASS_EXPORTS __declspec(dllimport)
#endif