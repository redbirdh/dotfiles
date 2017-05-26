
# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/Users/vader/cocos2d-x/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
export COCOS_TEMPLATES_ROOT=/Users/vader/cocos2d-x/templates
export PATH=$COCOS_TEMPLATES_ROOT:$PATH

# Add environment variable NDK_ROOT for cocos2d-x
export NDK_ROOT=/Users/vader/Library/Android/sdk/ndk-bundle
export PATH=$NDK_ROOT:$PATH

# Add environment variable ANDROID_SDK_ROOT for cocos2d-x
export ANDROID_SDK_ROOT=/Users/vader/Library/Android/sdk
export PATH=$ANDROID_SDK_ROOT:$PATH
export PATH=$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools:$PATH

# Add userbin folder
export PATH=/userbin:$PATH
export PATH=/usr/local/bin:$PATH


test -r ~/.bashrc && . ~/.bashrc
# PS1="\[\e[0;32m\][\t]  \W $ \[\033[0m\]"
PS1="\[\e[32m\][\u@\W] $ \[\e[0m\]"

