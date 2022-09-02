.PHONY: help
help:             ## Show The Help.
	@echo "Usage: make <target>"
	@echo ""
	@echo "Targets:"
	@fgrep "##" Makefile | fgrep -v fgrep

.PHONY: generate-my-lib
generate-my-lib:  ## Generate Djinni Data For MyLib.
	rm -rf my-lib/cpp
	rm -rf my-lib/java
	rm -rf my-lib/jni
	rm -rf my-lib/objc
	rm -rf my-lib/yaml

	./bin/djinni \
    --java-out "my-lib/java" \
    --java-package com.dropbox.djinni.test \
    --java-nullable-annotation "javax.annotation.CheckForNull" \
    --java-nonnull-annotation "javax.annotation.Nonnull" \
    --java-use-final-for-record false \
    --java-implement-android-os-parcelable true \
    --java-gen-interface true \
    --ident-java-field mFooBar \
    \
    --cpp-out "my-lib/cpp" \
    --cpp-namespace testsuite \
    --ident-cpp-enum-type foo_bar \
    --cpp-optional-template "std::experimental::optional" \
    --cpp-optional-header "\"../../handwritten-src/cpp/optional.hpp\"" \
    --cpp-extended-record-include-prefix "../../handwritten-src/cpp/" \
    \
    --jni-out "my-lib/jni" \
    --jni-use-on-load-initializer false \
    --ident-jni-class NativeFooBar \
    --ident-jni-file NativeFooBar \
    \
    --objc-out "my-lib/objc" \
    --objcpp-out "my-lib/objc" \
    --objc-type-prefix DB \
    \
    --yaml-out "my-lib/yaml" \
    --yaml-out-file "yaml-interface-test.yaml" \
    --yaml-prefix "test_" \
    \
    --idl "my-lib/interface_and_abstract_class.djinni" \
    --idl-include-path "djinni/vendor" \

.PHONY: generate-test
generate-test:    ## Generate Djinni Data For Test.
	rm -rf test/cpp
	rm -rf test/java
	rm -rf test/jni
	rm -rf test/objc
	rm -rf test/yaml

	./bin/djinni \
    --java-out "test/java" \
    --java-package com.dropbox.djinni.test \
    --java-nullable-annotation "javax.annotation.CheckForNull" \
    --java-nonnull-annotation "javax.annotation.Nonnull" \
    --java-use-final-for-record false \
    --java-implement-android-os-parcelable true \
    --java-gen-interface true \
    --ident-java-field mFooBar \
    \
    --cpp-out "test/cpp" \
    --cpp-namespace testsuite \
    --ident-cpp-enum-type foo_bar \
    --cpp-optional-template "std::experimental::optional" \
    --cpp-optional-header "\"../../handwritten-src/cpp/optional.hpp\"" \
    --cpp-extended-record-include-prefix "../../handwritten-src/cpp/" \
    \
    --jni-out "test/jni" \
    --jni-use-on-load-initializer false \
    --ident-jni-class NativeFooBar \
    --ident-jni-file NativeFooBar \
    \
    --objc-out "test/objc" \
    --objcpp-out "test/objc" \
    --objc-type-prefix DB \
    \
    --yaml-out "test/yaml" \
    --yaml-out-file "yaml-test.yaml" \
    --yaml-prefix "test_" \
    \
    --idl "test/test.djinni" \
    --idl-include-path "djinni/vendor" \
