public class StackLinkedListTest {
	public static void main(String args[]) {
		Stack<String> greeting = new StackLinkedList<>();
		greeting.push("!").push("World").push("Hello, ");
		System.out.println(greeting.pop() + greeting.pop() + greeting.pop());
	}
}