// AUTOGENERATED FILE - DO NOT MODIFY!
// This file was generated by Djinni from interface_and_abstract_class.djinni

#pragma once

#include "djinni_support.hpp"
#include "test_java_interface_only.hpp"

namespace djinni_generated {

class NativeTestJavaInterfaceOnly final : ::djinni::JniInterface<::testsuite::TestJavaInterfaceOnly, NativeTestJavaInterfaceOnly> {
public:
    using CppType = std::shared_ptr<::testsuite::TestJavaInterfaceOnly>;
    using CppOptType = std::shared_ptr<::testsuite::TestJavaInterfaceOnly>;
    using JniType = jobject;

    using Boxed = NativeTestJavaInterfaceOnly;

    ~NativeTestJavaInterfaceOnly();

    static CppType toCpp(JNIEnv* jniEnv, JniType j) { return ::djinni::JniClass<NativeTestJavaInterfaceOnly>::get()._fromJava(jniEnv, j); }
    static ::djinni::LocalRef<JniType> fromCppOpt(JNIEnv* jniEnv, const CppOptType& c) { return {jniEnv, ::djinni::JniClass<NativeTestJavaInterfaceOnly>::get()._toJava(jniEnv, c)}; }
    static ::djinni::LocalRef<JniType> fromCpp(JNIEnv* jniEnv, const CppType& c) { return fromCppOpt(jniEnv, c); }

private:
    NativeTestJavaInterfaceOnly();
    friend ::djinni::JniClass<NativeTestJavaInterfaceOnly>;
    friend ::djinni::JniInterface<::testsuite::TestJavaInterfaceOnly, NativeTestJavaInterfaceOnly>;

    class JavaProxy final : ::djinni::JavaProxyHandle<JavaProxy>, public ::testsuite::TestJavaInterfaceOnly
    {
    public:
        JavaProxy(JniType j);
        ~JavaProxy();

        bool test_method() override;

    private:
        friend ::djinni::JniInterface<::testsuite::TestJavaInterfaceOnly, ::djinni_generated::NativeTestJavaInterfaceOnly>;
    };

    const ::djinni::GlobalRef<jclass> clazz { ::djinni::jniFindClass("com/dropbox/djinni/test/TestJavaInterfaceOnly") };
    const jmethodID method_testMethod { ::djinni::jniGetMethodID(clazz.get(), "testMethod", "()Z") };
};

}  // namespace djinni_generated
