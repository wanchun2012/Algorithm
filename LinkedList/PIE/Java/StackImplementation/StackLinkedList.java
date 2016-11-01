/*
Reference: 
--- <Programming Interviews Exposed>
--- http://eddmann.com/posts/implementing-a-stack-in-java-using-arrays-and-linked-lists/

Notes:

A stack is a last-in-first-out (LIFO) data structure:
Elements are always removed in the reverse order in which they were added.
The add element and remove element operations are conventionally called push and pop, respectively.

Dynamic Array or Linked List:
The main advantage of dynamic arrays over linked list is that arrays offer random access to the array elements 
- you can immediately access any element in the array if you know its index. However, operations on a stack always work on one end of the data structure (the top of the stack),
so the random accessibilit of dynamic array gains you little.
In addition, as a dynamic array grows, it must occasionally be resized,
which can be a time-consuming operation as elements are copied from the old array to the new array.

Linked lists usually allocate memory dynamically for each element. 
Depending on the overhead of the memory allocator, these allocations are offten more time consuming than the copies required by a dynamic array,
so a stack based on a dynamic array is usually faster than one based on a linked list.

Analysis:
Linked List: 
Time: O(1) pop, O(1) push, O(n) tranversal, but most of the time we only care about the first element.
Space: Required per Node.
*/

import java.util.*;

public class StackLinkedList<T> implements Stack<T> {
	private int total;
	private Node first;

	private class Node {
		private T ele;
		private Node next;
	}

	public StackLinkedList() {

	}

	public StackLinkedList<T> push(T ele) {
		Node current = first;
		first = new Node();
		first.ele = ele;
		first.next = current;
		total++;
		return this;
	}

	public T pop() {
		if (first == null) {
			new NoSuchElementException();
		}
		T ele = first.ele;
		first = first.next;
		total--;
		return ele;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder();
		Node tmp = first;
		while (tmp != null) {
			sb.append(tmp.ele).append(", ");
			tmp = tmp.next;
		}
		return sb.toString();
	}
}
