# General Path
export PATH="/home/lope/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"

# General Home
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/workspace

# Custom environment variables in alphabetical order
export ANDROID_HOME=$HOME/.android/sdk
export PATH=$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH

export ANDROID_STUDIO_HOME=$HOME/IDE/android-studio
export PATH=$ANDROID_STUDIO_HOME/bin:$PATH

export CABAL_HOME=$HOME/.cabal
export PATH=$CABAL_HOME/bin:$PATH

export GRADLE_HOME=$HOME/.gradle/gradle-1.10
export PATH=$GRADLE_HOME/bin:$PATH

export JAVA_HOME=$HOME/.java/jdk1.6.0_45
export PATH=$JAVA_HOME/bin:$PATH

export MAVEN_HOME=$HOME/.m3
export PATH=$MAVEN_HOME/bin:$PATH

export NODE_HOME=$HOME/.node
export PATH=$NODE_HOME/bin:$PATH

export XMONAD_HOME=$HOME/.xmonad
export PATH=$XMONAD_HOME/bin:$PATH

export ACTIVATOR_HOME=$HOME/.activator
export PATH=$ACTIVATOR_HOME:$PATH

export PIDCAT_HOME=$HOME/.pidcat
export PATH=$PIDCAT_HOME:$PATH

export EDITOR='vim'

# The next line updates PATH for the Google Cloud SDK.
source '/Users/lopeemano/Google/Google-API/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
source '/Users/lopeemano/Google/Google-API/google-cloud-sdk/completion.zsh.inc'
