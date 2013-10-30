# Howto Obfuscate Clojure Project

## Howto

### Steps (run.sh)

#### 1: create all-in-one standalone jar 

	$ lein uberjar

#### 2: use proguard.pro config file to obfuscate jar file 

	$ java -jar proguard.jar @proguard.pro

#### How

project.clj(obfuscate snippet) 

	:main ^:skip-aot helloworld.core
  	:target-path "target/%s"
  	:profiles {:uberjar {:aot :all}}
  	:aot :all
  	:omit-source true

check proguard.pro config file for detail obfuscation.

## Usage

    $ ./run.sh

## Run unobfuscated version
	
	$ lein run

## Run obfuscated version
	
	$ java -jar obfuscated/helloworld-0.1.0-SNAPSHOT-standalone.jar
    
## License

Copyright © 2013 Eiffel Q

Distributed under the Eclipse Public License either version 1.0 or (at
your option) any later version.
