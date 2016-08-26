package cn.blinkit.base.util;

import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;

import javax.imageio.ImageIO;

public class VerifyCode {
	
	private int w = 70;	// 宽
	private int h = 35; // 高
	// 颜色可以，不是纯白色的
	private Color bgcolor = new Color(240, 240, 240);
	// 实例化Random
	private Random random = new Random();
	// 生成验证码的字体，随机
	private String[] fontNames = {"宋体", "华文楷体", "黑体", "华文新魏", "华文隶书", "微软雅黑", "楷体_GB2312"};
	// 生成的随机码
	private String codes = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
	// 字号范围
	private int[] fontSizes = {24, 25, 26, 27, 28};	
	// 保存生成的随机码
	private String vCode;
	
	/**
	 * 生成随机的颜色
	 * jdk：取自此随机数生成器序列的、在 0（包括）和指定值（不包括）之间均匀分布的 int 值
	 * @return new Color(red, green, blue) 返回Color的实例
	 */
	private Color randomColor() {
		int red = random.nextInt(256);
		int green = random.nextInt(256);
		int blue = random.nextInt(256);
		return new Color(red, green, blue);
	}
	
	/**
	 * 生成随机的 字体名、样式、字号
	 * @return new Font(name, style, size) 返回font的实例
	 */
	private Font randomFont() {
		// 如果数组长度为7，数值为0~6，合法下标
		int index = random.nextInt(fontNames.length);	
		String name = fontNames[index];
		
		// 0,1,2,3   private int[] fontStyles = {0, 1, 2, 3};
		int style = random.nextInt(4);
		index = random.nextInt(fontSizes.length);
		
		// 随机生成fontSize的下标
		int size = fontSizes[index];
		return new Font(name, style, size);
	}
	
	/**
	 * 在生成的图片上画干扰线
	 * @param img 生成的图片
	 */
	private void drawLine(BufferedImage img) {
		Graphics2D graphics = (Graphics2D)img.getGraphics();
		graphics.setColor(Color.BLACK);
		graphics.setStroke(new BasicStroke(1.5F));
		for (int i=0; i<5; i++) {
			int x1 = random.nextInt(w);
			int y1 = random.nextInt(h);
			int x2 = random.nextInt(w);
			int y2 = random.nextInt(h);
			graphics.drawLine(x1, y1, x2, y2);
		}
	}
	
	/**
	 * 随机生成字符
	 * @return 返回索引处对应的char值
	 */
	private char randomChar() {
		// 根据随机码的个数生成随机的索引
		int index = random.nextInt(codes.length());
		// 返回索引处对应的char值
		return codes.charAt(index);
	}
	
	/**
	 * 创建画板，并添加背景色
	 * 1.创建图片
	 * 2.设置背景色
	 * @return img 返回一个矩形的画板，并填充背景色
	 */
	private BufferedImage createImage() {
		//创建图片
		BufferedImage img = new BufferedImage(w, h, BufferedImage.TYPE_INT_RGB);
		// 设置画笔颜色(画板的背景颜色)
		img.getGraphics().setColor(bgcolor);
		// 填充一个与图片一样大小的矩形，即设置背景色
		img.getGraphics().fillRect(0, 0, w, h);
		return img;
	}
	
	/**
	 * 用户调用这个方法获取图片
	 * @return img 返回一个图片给用户
	 */
	public BufferedImage getImage() {
		/*
		 * 我们要写字符
		 * 写什么字符，难道是hello？答案是随机生成！范围是：0~9A~Za~z
		 * 字体呢？什么字体名称，是宋体，还是隶书？字号多大呢，是否粗体？都随机！
		 * 字符的颜色呢？每个字符是否要相同的颜色呢？还是都不行，那么随机吧！
		 */
		BufferedImage img = createImage();
		Graphics2D graphics = (Graphics2D)img.getGraphics();
		
		// 创建StringBuilder实例用来保存生成的随机码
		StringBuilder sb = new StringBuilder(4);
		
		// 画图片
		for (int i = 0; i < 4; i++) {
			String str = this.randomChar() + "";	// 获取随机字符
			sb.append(str);	// 将值保存起来
			graphics.setColor(this.randomColor());	// 随机颜色
			graphics.setFont(this.randomFont());	//随机字体
			graphics.drawString(str, w/4*i, h - 5);
		}
		this.vCode = sb.toString();
		this.drawLine(img);	// 添加干扰线
		return img;
	}
	
	/**
	 * 这是返回图片生成字符的方法
	 * <strong>这个方法必须在getImage()方法之后调用</strong>
	 * @return vCode.toString() 将图片随机生成的字符以字符串形式返回
	 */
	public String getVCode() {
		return vCode;
	}
	
	// 保存图片
	public static void saveImage(BufferedImage img, OutputStream out) throws IOException {
		ImageIO.write(img, "JPEG", out);
	}
}
