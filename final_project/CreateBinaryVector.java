import java.util.*;		import java.io.*;

public class CreateBinaryVector {
    static final int N = 64; 	// N is the number of data items
    //static final int M = 22;	// M is the size of one data item
    static Random rand = new Random();
    public static void main(String[] args) throws IOException
    {
        int a[] = new int[N];	// a is the allocated array for N data items
        // The file ForSorting.coe will be used in the hardware accelerator
        File fout = new File("binary.coe");
        // The file SortInSoftware.txt will be used in software
        File fsoft = new File("binary.txt");
        PrintWriter pw = new PrintWriter(fout);
        PrintWriter pws = new PrintWriter(fsoft);
        pw.println("memory_initialization_radix = 2;");	// for COE files
        pw.println("memory_initialization_vector = ");	// for COE files
        for (int x = 0; x < N; x++) {    // random data generation
            a[x] = rand.nextInt(2);
        }
        for (int l=0; l<N-1; l++)	 // the value of 2 in the format 0x2 depends on M
        {
            pw.printf("%d",a[l]);	// writing generated data items to the files
            pws.printf("%d",a[l]);	// ForSorting.coe and SortInSoftware.txt
        }
        pws.printf("%d ", a[N-1]);
        pw.printf("%d;\n", a[N-1]);
        pw.println();				// this line is needed just for ForSorting.coe
        pw.close(); pws.close();	// closing both files
    }
}

