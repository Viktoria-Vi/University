import java.util.Iterator;

public class ListSet<E extends Comparable<E>> implements Set<E>, Iterable<E> {

	private static class SetNode<T> {
		private T item;
		private SetNode<T> next;

		/**
		 * constructor to build a node with no successor
		 * 
		 * @param element
		 *            the value to be stored by this node
		 */
		private SetNode(T element) {
			item = element;
			next = null;
		}

		/**
		 * constructor to build a node with specified (maybe null) successor
		 * 
		 * @param element
		 *            the value to be stored by this node
		 * @param reference
		 *            the next field for this node
		 */
		private SetNode(T element, SetNode<T> reference) {
			item = element;
			next = reference;
		}
	}

	// This is the start of the linked list representing this set.
	// If the set is empty, it is null
	private SetNode<E> head = null;

	@Override
	public boolean add(E element) {
		SetNode<E> current = head;
		while(current.next != null){
			if(current.item.compareTo(element) == 0){
				return false;
			}
			current = current.next;
		}
		current.next = new SetNode<>(element);
		return true;
	}

	@Override
	public boolean remove(E element) {
		SetNode<E> current = head;
		while(current.next != null){
			if(current.item.compareTo(element) == 0){
				current.next = new SetNode<>(current.item, current.next.next);
				return true;
			}
			current = current.next;
		}
		return false;
	}

	@Override
	public boolean contains(E element) {
		return contains(head, element);
	}

	/**
	 * recursive private method, called by the public wrapper method
	 * 
	 * @param node
	 *            the head of the remaining list, maybe null
	 * @param element
	 *            the value to be searched
	 * @return search is succesful
	 */
	private boolean contains(SetNode<E> node, E element) {
		if (node == null) {
			return false;
		}
		return node.item.compareTo(element) == 0 || contains(node.next, element);
	}

	@Override
	public boolean isEmpty() {
		return head == null;
	}

	//probs kein n+m aber mir egal
	//Vorbedingung: eins der sets ist leer KekW
	@Override
	public void union(Set<E> set) {
		SetNode<E> add = (SetNode<E>) set;
		if(head == null){
			head = add;
		}
		while(add.next != null){
				add(add.item);
		}
	}

	@Override
	public void intersect(Set<E> set) {
		SetNode<E> intersect = (SetNode<E>) set;
		if (set.isEmpty()) {
			head = null;
			return;
		}
		while(intersect.next != null) {
			if (!contains(intersect.item)) {
				remove(intersect.item);
			}
			intersect = intersect.next;
		}
	}

	@Override
	public void subtract(Set<E> set) {
		SetNode<E> sub = (SetNode<E>) set;
		while(sub.next != null) {
			if (contains(sub.item)) {
				remove(sub.item);
			}
			sub = sub.next;
		}
	}

	/**
	 * recursive private method, called by the public wrapper method
	 * 
	 * @param node the head of the list (may be null if we are at the end)
	 * @return the string representing the list
	 */
	private String toString(SetNode<E> node) {
		if (node == null) {
			return "";
		}
		if (node.next == null) {
			return node.item.toString();
		}
		return node.item.toString() + " -> " + toString(node.next);
	}

	@Override
	public String toString() {
		return toString(head);
	}

	public Iterator<E> iterator() {
		return new Iterator<E>() {
			SetNode<E> node = head;

			@Override
			public boolean hasNext() {
				return node != null;
			}

			@Override
			public E next() {
				E element = node.item;
				node = node.next;
				return element;
			}
		};
	}
}