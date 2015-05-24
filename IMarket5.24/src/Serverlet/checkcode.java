package Serverlet;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class checkcode
 */
public class checkcode extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public checkcode() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setHeader("Pragma", "No-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);
		int width=68,height=25;
		BufferedImage checkcode=new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);
		Graphics g=checkcode.getGraphics();
		Random random=new Random();
		g.setColor(new Color(90,58,55));
		g.fillRect(0, 0, width, height);
		g.setFont(new Font("Times New Roman",Font.PLAIN,18));
		for(int i=0;i<200;i++){
			int x=random.nextInt(width);
			int y=random.nextInt(height);
			int xl=random.nextInt(17);
			int yl=random.nextInt(17);
			g.drawLine(x, y, x+xl, y+yl);
		}
		String sRand="";
		for(int i=0;i<4;i++){
			String rand=String.valueOf(random.nextInt(10));
			sRand+=rand;
			g.setColor(new Color(30+random.nextInt(160),40+random.nextInt(170),40+random.nextInt(180)));
			g.drawString(rand, 13*i+6, 16);
		}
		request.getSession().setAttribute("yzm", sRand);
		g.dispose();
		ImageIO.write(checkcode, "JPEG", response.getOutputStream());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request,response);
	}

}
