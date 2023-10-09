extern func printf(byte* ...) : int

func main(int argc, byte** argv) : int
{
    var message = ’World’
    if argc > 1
        message = argv[1]

    printf(’Hello, %s\n’, message)
    return 0
}
