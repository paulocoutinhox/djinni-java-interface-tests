// AUTOGENERATED FILE - DO NOT MODIFY!
// This file was generated by Djinni from test.djinni

#pragma once

#include "test_java_interface_only.hpp"
#include <memory>

namespace testsuite {

class ExternJavaInterfaceOnly {
public:
    virtual ~ExternJavaInterfaceOnly() = default;

    virtual /*not-null*/ std::shared_ptr<::testsuite::TestJavaInterfaceOnly> foo(const /*not-null*/ std::shared_ptr<::testsuite::TestJavaInterfaceOnly> & i) = 0;
};

}  // namespace testsuite
