import java.util.LinkedList;
import java.util.Queue;

/**
 * This class implements a binary tree
 *
 * @param <T>
 */
public class BinTree<T> {

    protected BinTree<T> left, right;
    protected T key;

    /**
     * creates a new instance
     *
     * @param l the left subtree
     * @param k the key of the tree node
     * @param r the right subtree
     */
    public BinTree(BinTree<T> l, T k, BinTree<T> r) {
        this.left = l;
        this.key = k;
        this.right = r;
    }

    /**
     * returns the left subtree
     */
    public BinTree<T> getLeft() {
        return left;
    }

    /**
     * returns the left subtree
     */
    public BinTree<T> getRight() {
        return right;
    }

    /**
     * returns the key
     */
    public T getKey() {
        return key;
    }

    /**
     * checks if the tree is empty
     *
     * @return true, if tree is empty, else false
     */
    public boolean isEmpty() {
        return ((left == null) && (right == null) && (key == null));
    }

    /**
     * prints the tree in the In-Order representation on the console
     */
    public void inOrder() {
        //returns the Tree in In-Order representation
        if (left != null) {
            left.inOrder();
        }
        System.out.print(key + " ");
        if (right != null) {
            right.inOrder();
        }
    }

    /**
     * prints the tree in the Pre-Order representation on the console
     */
    public void preOrder() {
        //returns the Tree in Pre-Order representation
        System.out.print(key + " ");
        if (left != null) {
            left.preOrder();
        }
        if (right != null) {
            right.preOrder();
        }

    }

    /**
     * prints the tree in the Post-Order representation on the console
     */
    public void postOrder() {
        //returns the Tree in Post-Order representation
        if (left != null) {
            left.postOrder();
        }
        if (right != null) {
            right.postOrder();
        }
        System.out.print(key + " ");
    }

    /**
     * prints the tree in the Level-Order representation on the console
     */
    public void levelOrder() {
        //returns the Tree in Level-Order representation
        if(getKey() == null){
            return;
        }
        Queue<BinTree<T>> queue = new LinkedList<>();
        queue.offer(this);
        while (!queue.isEmpty()) {
            BinTree<T> node = queue.poll();
            System.out.print(node.key + " ");
            if (node.left != null) {
                queue.offer(node.left);
            }
            if (node.right != null) {
                queue.offer(node.right);
            }

        }

    }

    public static void main(String[] args) {

        BinTree g = new BinTree(
                new BinTree(
                        new BinTree(
                                new BinTree(null, "E", null),
                                "F", null),
                        "A",
                        new BinTree(null, "C", null)),
                "G",
                new BinTree(
                        new BinTree(null, "H",
                                new BinTree(null, "B", null)),
                        "D", null));
        g.inOrder();
        System.out.println("\n----");
        g.preOrder();
        System.out.println("\n----");
        g.postOrder();
        System.out.println("\n----");
        g.levelOrder();

    }


}