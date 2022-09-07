package de.umr.ds.task2;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;

public class EchoServer {

    public static void main(String[] args) {

        try (ServerSocket serverSocket = new ServerSocket(6000)) {
            System.out.println("Waiting for connection.....");
			Socket clientSocket = serverSocket.accept();
            System.out.println("Connected to client");
            try (BufferedReader br = new BufferedReader(
                    new InputStreamReader(
                            clientSocket.getInputStream()));
                 PrintWriter out = new PrintWriter(
                         clientSocket.getOutputStream(), true)) {
                String inputLine;
                while ((inputLine = br.readLine()) != null) {
                    System.out.println("Server: " + inputLine);
                    out.println(inputLine);
                }

            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        } catch (IOException ex) {
            throw new RuntimeException(ex);
        }


    }

}

