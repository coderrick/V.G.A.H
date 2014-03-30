/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package comments;

import java.io.IOException;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
/**
 *
 * @author Programming PC
 */
public class JsoupTest {
    public static void main(String[] args) {
 
	Document doc;
	try {
 
		// need http protocol
		doc = Jsoup.connect("http://www.ign.com/games/reviews?filter=latest").userAgent("Mozilla").get();
 //http://google.com
		// get page title
		String title = "Stuff";//doc.title();
		System.out.println("title : " + title);
 
		// get all links
		Elements links = doc.select("a[href]");
		for (Element link : links) {
 
			// get the value from href attribute
			System.out.println("\nlink : " + link.attr("href"));
			System.out.println("text : " + link.text());
 
		}
 
	} catch (IOException e) {
		e.printStackTrace();
	}
 
  }   
}
