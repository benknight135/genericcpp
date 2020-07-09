#ifdef INHERITANCECLASS_EXPORT
#define INHERITANCECLASS_EXPORTS __declspec(dllexport)
#else
#define INHERITANCECLASS_EXPORTS __declspec(dllimport)
#endif