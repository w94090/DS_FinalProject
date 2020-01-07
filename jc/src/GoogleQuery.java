import java.io.BufferedReader;

import java.io.IOException;

import java.io.InputStream;

import java.io.InputStreamReader;

import java.net.URL;

import java.net.URLConnection;

import java.util.HashMap;

import org.jsoup.Jsoup;

import org.jsoup.nodes.Document;

import org.jsoup.nodes.Element;

import org.jsoup.select.Elements;





public class GoogleQuery 

{

	public String searchKeyword;

	public String url;

	public String content;
	
	public String childrenContent;

	public GoogleQuery(String searchKeyword)

	{

		this.searchKeyword = searchKeyword;
		this.url = "http://www.google.com/search?q="+searchKeyword;
//		this.url = "https://www.youtube.com/results?search_query="+searchKeyword;
	}

	
	//爬蟲
	private String fetchContent(String url) throws IOException

	{
		String retVal = "";

		URL u = new URL(url);

		URLConnection conn = u.openConnection();
		
		conn.setRequestProperty("User-agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) Chrome/7.0.517.44");  
		//前面的Mozilla 5.0是用來應對一些沒辦法用爬蟲的網站，偽裝成電腦使用

		InputStream in = conn.getInputStream();
		InputStreamReader inReader = new InputStreamReader(in,"utf-8");
		BufferedReader bufReader = new BufferedReader(inReader);
		String line = null;

		while((line=bufReader.readLine())!=null)
		{
			retVal += line;

		}
		return retVal;
	}
	public HashMap<String, String> query() throws IOException

	{
		if(content==null)

		{
			content= fetchContent(this.url); //網頁原始碼
		}

		
	HashMap<String, String> retVal = new HashMap<String, String>();
		//從網頁中擷取HTML
		Document doc = Jsoup.parse(content);
		//parse(Reader ,baseURL): 在每個爬到的文件上面，前綴都加上baseURL/

		System.out.println(doc.text());
		Elements lis = doc.select("div");	
		
		lis = lis.select(".ZINbbc");
//		lis= lis.select(".yt-lockup");
		String des=lis.select(".ZINbbc").text();
		System.out.println("----------------------------");
		System.out.println(des);
		System.out.println("----------------------------");
		System.out.println(lis.size());

		
		for(Element li : lis)
		{
				try 
				{	
					String title = li.select(".BNeawe").get(0).text();
					String citeUrl = li.select("a").get(0).attr("href");
					
					
/*				for(int i = 0 ; i < block.size(); i++)
				System.out.println(block.get(i).text());
				
				System.out.println(block.get(1).text());
				System.out.println(block.get(2).text());
				
				String title = block.get(1).text();
				String citeUrl = block.get(2).text();
				
				System.out.println(title+" "+citeUrl);
				System.out.println(title);
				System.out.println(citeUrl);
*/				retVal.put(title, citeUrl);
					
/*				if(citeUrl != null)
				{
				childrenContent =fetchContent(citeUrl).substring(6);
				Document childrenDoc = Jsoup.parse(childrenContent);
				Elements childrenLis = childrenDoc.select("div");
				childrenLis= childrenLis.select(".ZINbbc");
				
//				for(Element childrenLi :childrenLis)
					
						String article = childrenLis.select("div").text();
						System.out.println(article);
				
				
				}
				else
				{
					break;
				}

	*/			}catch (IndexOutOfBoundsException e) {

					e.printStackTrace();
				}
			}
		
		return retVal;
	
		
		
		

	}

	public void crwalGif()
	{
		
	}
	
	public void catchChildrenPage()
	{
		Document document= Jsoup.parse(content);
		Elements childrenPage =document.select("body");
		childrenPage=childrenPage.select("a[href]");
		System.out.println(childrenPage.size());
		for(Element ele:childrenPage)
		{
			System.out.println(ele);
		}
	}

}
