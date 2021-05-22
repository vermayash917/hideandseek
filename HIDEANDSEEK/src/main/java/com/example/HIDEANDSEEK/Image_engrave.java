package com.example.HIDEANDSEEK;

import java.util.*;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.*;
import javax.imageio.ImageIO;
import java.lang.*;

class Steganography
{
    private ArrayList<Pixel> pixel=new ArrayList<>();
    private String msg=new String();
    public Steganography(ArrayList<Pixel>p,String text)
    {
        pixel=p;
        msg=text;
    }
    public Steganography(ArrayList<Pixel> p)
    {
        pixel=p;
    }
    public int changeBit(int number,int lastbit)
    {
        int x=number%2;
        number=number-x;
        number=number+lastbit;
        return number;
    }

    public int[] getIntArrayFrom3RGB(int count)
    {
        Pixel p[]=new Pixel[3];
        int rgb[]=new int[9];
        p[0]=pixel.get(count);
        p[1]=pixel.get(count+1);
        p[2]=pixel.get(count+2);
        rgb[0]=(int)p[0].r;
        rgb[1]=(int)p[0].g;
        rgb[2]=(int)p[0].b;
        rgb[3]=(int)p[1].r;
        rgb[4]=(int)p[1].g;
        rgb[5]=(int)p[1].b;
        rgb[6]=(int)p[2].r;
        rgb[7]=(int)p[2].g;
        rgb[8]=(int)p[2].b;
        return rgb;
    }
    public Pixel[] get3RGBFromIntArray(int rgb[],int count)
    {
        Pixel p[]=new Pixel[3];
        p[0]=pixel.get(count);
        p[1]=pixel.get(count+1);
        p[2]=pixel.get(count+2);
        p[0].r=(char)rgb[0];
        p[0].g=(char)rgb[1];
        p[0].b=(char)rgb[2];
        p[1].r=(char)rgb[3];
        p[1].g=(char)rgb[4];
        p[1].b=(char)rgb[5];
        p[2].r=(char)rgb[6];
        p[2].g=(char)rgb[7];
        p[2].b=(char)rgb[8];
        return p;
    }
    public ArrayList<Pixel> engraveMsgLength()
    {
        int msglength=msg.length();
        int count=0;
        Pixel p[]=new Pixel[3];
        int rgb[]=new int[9];
        rgb=getIntArrayFrom3RGB(count);
        int revbitcount=8;
        while(msglength>0)
        {
            rgb[revbitcount]=changeBit(rgb[revbitcount],msglength%2);
            msglength/=2;
            revbitcount--;
        }
        while(revbitcount>-1)
        {
            rgb[revbitcount]=changeBit(rgb[revbitcount],0);
            revbitcount--;
        }
        p=get3RGBFromIntArray(rgb,count);
        pixel.set(count,p[0]);
        pixel.set(count+1,p[1]);
        pixel.set(count+2,p[2]);
        return pixel;
    }

    public ArrayList<Pixel> engraveMsg()
    {
        int msglength=msg.length();
        int l=0;
        int count=3;
        Pixel p[]=new Pixel[3];
        int rgb[]=new int[9];
        while(l<msglength)
        {
            rgb=getIntArrayFrom3RGB(count);
            int msgchar=(int)msg.charAt(l);
            int revbitcount=7;
            while(msgchar>0)
            {
                rgb[revbitcount]=changeBit(rgb[revbitcount],msgchar%2);
                msgchar/=2;
                revbitcount--;
            }
            while(revbitcount>-1)
            {
                rgb[revbitcount]=changeBit(rgb[revbitcount],0);
                revbitcount--;
            }
            p=get3RGBFromIntArray(rgb,count);
            pixel.set(count,p[0]);
            pixel.set(count+1,p[1]);
            pixel.set(count+2,p[2]);
            count=count+3;
            l++;
        }
        return pixel;
    }

    public int degraveMsgLength()
    {
        int msglength=0;
        int x=0;
        Pixel p=new Pixel();
        for(int i=0;i<3;i++)
        {
            p=pixel.get(i);
            x=p.r%2;
            msglength*=2;
            msglength+=x;
            x=p.g%2;
            msglength*=2;
            msglength+=x;
            x=p.b%2;
            msglength*=2;
            msglength+=x;
        }
        return msglength;
    }

    public void degraveMsg()
    {
        int textchar=0;
        int count=3;
        int msglength=degraveMsgLength();
        Pixel p=new Pixel();
        for(int i=0;i<msglength;i++)
        {
            textchar=0;
            for(int j=0;j<3;j++)
            {
                int x=0;
                p=pixel.get(count);
                x=p.r%2;
                textchar*=2;
                textchar+=x;
                x=p.g%2;
                textchar*=2;
                textchar+=x;
                if(j!=2)
                {
                    x=p.b%2;
                    textchar*=2;
                    textchar+=x;
                }
                count++;
            }
            msg=msg+(char)textchar;
        }
    }
    public String displaymsg()
    {
        return msg;
    }
}

class Image
{
    private BufferedImage input;
    private  int height;
    private int width;
    private ArrayList<Pixel> pixels=new ArrayList<>();
    public Image(String a)
    {
        try
        {
            File inputImage=new File(a);
            input=ImageIO.read(inputImage);
            width=input.getWidth();
            height=input.getHeight();
        }
        catch(Exception e)
        {
            System.out.println("Exception occured : " + e);
        }
    }
    public int getwidth()
    {
        return width;
    }
    public int getheight()
    {
        return height;
    }
    public void setPixels()
    {
        int count=0;
        for(int i=0;i<height;i++)
        {
            for(int j=0;j<width;j++)
            {
                Color c=new Color(input.getRGB(j,i));
                char a=(char)c.getAlpha();
                char r=(char)c.getRed();
                char g=(char)c.getGreen();
                char b=(char)c.getBlue();
                Pixel x=new Pixel(a,r,g,b);
                pixels.add(x);
                int pv=getPixelValue(count);
                count++;
                input.setRGB(j,i,pv);
            }
        }
    }
    public ArrayList<Pixel> getPixels()
    {
        return pixels;
    }
    public void changePixels(ArrayList<Pixel> p)
    {
        int l=p.size();
        for(int i=0;i<l;i++)
        {
            pixels.set(i,p.get(i));
        }
    }
    public int getPixelValue(int count)
    {
        int p=0;
        Pixel x=pixels.get(count);
        int a=(int)x.a;
        int r=(int)x.r;
        int g=(int)x.g;
        int b=(int)x.b;
        p=(a<<24)|(r<<16)|(g<<8)|b;
        return p;
    }
    public void getOutputImage(String name)
    {
        try
        {
            int count=0;
            for(int i=0;i<height;i++)
            {
                for(int j=0;j<width;j++)
                {
                    Pixel x=pixels.get(count);
                    int pv=getPixelValue(count);
                    count++;
                    input.setRGB(j,i,pv);
                }
            }
            File f=new File(name);
            ImageIO.write(input,"png",f);
        }
        catch(Exception e)
        {
            System.out.println("Exception "+ e);
        }
    }

    public static void Engrave(String filename,String text,String new_filename)
    {
        Image originalImage=new Image(filename);
        originalImage.setPixels();
        ArrayList<Pixel> pixelList=new ArrayList<>();
        pixelList=originalImage.getPixels();
        Steganography steg=new Steganography(pixelList,text);
        originalImage.changePixels(steg.engraveMsgLength());
        originalImage.changePixels(steg.engraveMsg());
        originalImage.getOutputImage(new_filename);
    }

    public static String Degrave(String new_filename){
        Image originalImage=new Image(new_filename);
        originalImage.setPixels();
        ArrayList<Pixel> pixelList = new ArrayList<>();
        pixelList=originalImage.getPixels();
        Steganography steg=new Steganography(pixelList);
        steg.degraveMsg();
        return steg.displaymsg();
    }

}
class Pixel
{
    char a;
    char r;
    char g;
    char b;
    public Pixel(char alpha,char red,char green,char blue)
    {
        a=alpha;
        r=red;
        g=green;
        b=blue;
    }
    public Pixel()
    {
        a=0;
        r=0;
        g=0;
        b=0;
    }
    public void display()
    {
        System.out.println((int)a+" + "+(int)r+" + "+(int)g+" + "+(int)b);
    }
}