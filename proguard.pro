# Our uberjar
-injars target/helloworld-0.1.0-SNAPSHOT-standalone.jar
# Our output direcotry
-outjars obfuscated

# Link to rt.jar. I'm on a Mac so your path may differ, in Mac OSX, rt.jar is classes.jar
-libraryjars /System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Classes/classes.jar

# ProGuard options. Detailed explanation here http://proguard.sourceforge.net/index.html#manual/usage.html
-dontskipnonpubliclibraryclassmembers
-dontnote
-printseeds

# What we will be doing is obfuscating, shrinking and optimizing the jar. 
# If you experience any problems start out with obfuscation and add the 
# -dontoptimize  and the -dontshrink flags and see if it works.

# Tell proguard to leave the clojure runtime alone
# You would need to add any other classes that you wish to preserve here.
-keep class clojure.** { *; }
-keep class java.** { *; }
-keep class javax.** { *; }

# Keep our core__init class
-keep class helloworld.core__init {
    public static void load();
}

# Keep classes that contain a main method (otherwise we won't be able to run the jar)
-keepclasseswithmembers public class * {
    public static void main(java.lang.String[]);
}