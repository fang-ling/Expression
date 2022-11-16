@main
public struct Expression {
    public private(set) var text = "Hello, World!"

    public static func main() {
        print(Expression().text)
    }
}
