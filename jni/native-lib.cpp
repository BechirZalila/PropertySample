#include <jni.h>
#include <string>
#include <cutils/properties.h>

extern "C"
JNIEXPORT void JNICALL
Java_com_sofia_propertysample_MainActivity_enableProp(JNIEnv *env, jobject instance) {
    property_set("service.test", "1");

}extern "C"
JNIEXPORT void JNICALL
Java_com_sofia_propertysample_MainActivity_disableProp(JNIEnv *env, jobject instance) {
    property_set("service.test", "0");

}
