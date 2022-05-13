import java.util.ArrayList;
import java.util.Collections;

public class SearchTree <K extends Comparable<K>> {

    Root root;
    private ArrayList tree;

    SearchTree() {
        root = null;
        tree = new ArrayList<>();
    }

    SearchTree(K key) {
        root = new Root(key);
    }

    public void insert(K key) {
        root = insertHelp(root, key);
    }

    private Root insertHelp(Root root, Comparable key) {

        if (root == null) {
            root = new Root(key);
            return root;
        }

        if (key.compareTo(root.key) < 0) {
            root.leftChild = insertHelp(root.leftChild, key);
        } else if (key.compareTo(root.key) > 0) {
            root.rightChild = insertHelp(root.rightChild, key);

        }
        return root;
    }

    private Root deleteHelp(Root root, Comparable key) {
        if (root == null) {
            return root;
        }
        if (key.compareTo(root.key) < 0) {
            root.leftChild = deleteHelp(root.leftChild, key);
        } else if (key.compareTo(root.key) > 0) {
            root.rightChild = deleteHelp(root.rightChild, key);
        } else {
            if (root.leftChild == null)
                return root.rightChild;
            else if (root.rightChild == null)
                return root.leftChild;

            root.key = searchMin(root.rightChild);

            root.rightChild = deleteHelp(root.rightChild, root.key);
        }
        return root;
    }

    public void delete(K key) {
        root = deleteHelp(root, key);
    }

    public Root search(Root root, Comparable key) {
        if (root == null) {
            return null;
        }
        if (root.key.compareTo(key) < 0) {
            return search(root.rightChild, key);
        }
        if (root.key.compareTo(key) > 0) {
            return search(root.leftChild, key);
        }
        return root;
    }

    public Comparable searchMin(Root root) {
        if (root == null) {
            return null;
        }
        if (root.leftChild == null) {
            return root.key;
        }
        return searchMin(root.leftChild);
    }

    public Comparable searchMax(Root root) {
        if (root == null) {
            return null;
        }
        if (root.rightChild == null) {
            return root.key;
        }
        return searchMax(root.rightChild);
    }

    public ArrayList toSortedArrayList(Root root) {
        tree.add(root.key);
        if (root.leftChild != null) {
            toSortedArrayList(root.leftChild);
        }
        if (root.rightChild != null) {
            toSortedArrayList(root.rightChild);
        }
        Collections.sort(tree);
        return tree;
    }
}
