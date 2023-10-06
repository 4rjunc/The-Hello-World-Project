sig HelloWorld {}

fact helloWorld {
    some h: HelloWorld | h = HelloWorld
}

run helloWorld for 1
