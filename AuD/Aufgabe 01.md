```java
public class Root {
    Comparable key;
    Root leftChild, rightChild;

    public Root(Comparable key) {
        this.key = key;
        leftChild = rightChild = null;
    }
}

```

```java
import java.util.ArrayList;
import java.util.Collections;

public class SearchTree {

    Root root;
    private ArrayList tree;

    SearchTree() {
        root = null;
        tree = new ArrayList<>();
    }

    SearchTree(Comparable key) {
        root = new Root(key);
    }

    public void insert(Comparable key) {
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

    public void delete(Comparable key) {
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

```

