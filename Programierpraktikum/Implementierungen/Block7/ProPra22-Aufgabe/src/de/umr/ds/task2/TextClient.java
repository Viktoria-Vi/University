package de.umr.ds.task2;


import java.io.*;
import java.net.*;
import java.util.Scanner;

public class TextClient {

	public static void main(String[] args) {
		try {
			InetAddress addr;
			Socket socket = new Socket(InetAddress.getLocalHost(), 6000);
			addr = socket.getInetAddress();
			System.out.println("Connected to " + addr);

			OutputStream output = socket.getOutputStream();
			PrintStream printStream = new PrintStream(output, true);
			Scanner inputScanner = new Scanner(System.in);


			InputStream input = socket.getInputStream();
			BufferedReader reader = new BufferedReader(new InputStreamReader(input));

			while(true) {
				String inputStream = inputScanner.nextLine();
				printStream.println(inputStream);
				System.out.println(reader.readLine());

			}

		}
		catch (IOException e) {
			System.out.println("Can't connect to server");
			System.out.println(e);
		}


	}
}