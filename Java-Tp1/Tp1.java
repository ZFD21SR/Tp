import java.util.Scanner;

public class Tp1 { 

	public static void exo1(){
		for (int i = 0; i < 5 ; i++)
		{
			System.out.println(i+",");
		}
  	}

     public static void exo2()
    {
         float a = 3.0f;
         double b = 4d;
         double c;

         c = Math.sqrt(a * a + b * b);
         System.out.println("c = " + c);
   	}

    public static void exo3()
   	{
       byte b = 42;
       char c = 'a';
       short s = 1024;
       int i = 50000;
       float f = 5.67f;
      double d = .1234d;
      double resultat = (f * b) + (i / c) - (d * s);

      System.out.print((f * b) + " + " + (i / c) + " - " + (d * s));
      System.out.println(" = " + resultat);

      byte b2 = 10;
      int b3 = b2 * b;

      System.out.println("b3 = " + b3);
   	}

	public static void exo4 ()
	{
		boolean x = false;
		boolean y = false;
		boolean a = false;
		boolean b = false;
		boolean c = false;

		System.out.println("x\ty\tx and y\t x or y\t x xor y");

		System.out.println(x +"\t"+ y +"\t"+ a +"\t"+ b +"\t"+ c+"");
		y = true;
		a = x & y;
		b = x | y;
		c = x ^ y;
		System.out.println(x +"\t"+ y +"\t"+ a +"\t"+ b +"\t"+ c+"");
		x= true;
		y= false;
		a= x & y;
		b= x | y;
		c= x ^ y;
		System.out.println(x +"\t"+ y +"\t"+ a +"\t"+ b +"\t"+ c+"");
		y = true;
		a= x & y;
		b= x | y;
		c= x ^ y;
		System.out.println(x +"\t"+ y +"\t"+ a +"\t"+ b +"\t"+ c +"");
	}

	public static void exo5 ()
	{
		for (int i=0 ; i<256 ; i++ ) 
		{
			char l = (char)i;
			System.out.println(i +" Vaut: "+l);		
		}
	}

	public static void exo6 ()
	{
			for(int i = 1, j = i + 10; i < 5; i++, j = i * 2)
			{
				System.out.println("i= " + i + " j= " + j);
			}
		
	}

	public static void exo7 ()
	{
			System.out.println("Soon");		
	}
	

	public static void exo8 ()
	{
		for (int i = 0; i<6 ; i++)
		{
			for (int j =0; j<6 ; j++)
			{
				if (i==0)
				{
					System.out.print(j +"\t");
					if (j==5) {System.out.print("\n");};					
				}
				if (j==0)
				{
					System.out.print(i +"\t");
					if (j==5) {System.out.print("\n");};					
				}
				if ( i!= 0 && j!=0)
				{
					int r = i * j;
					System.out.print(r +"\t");
					if (j==5) {System.out.print("\n");};
				}
			}
		}
	}

	public static void main (String args[])
	{
		int j=0;
		while (j==0)
		{
		System.out.print("Quel Exercices souhaitez vous? (1 à 8 / Autres pour quitter)");
		Scanner sc = new Scanner(System.in);
		int i = sc.nextInt();
		switch (i)
		{
			case 1:
				System.out.print("\n\n Exercices 1:");
				exo1();
				break;
			case 2:
				System.out.print("\n\n Exercices 2:");
				exo2();
				break;
			case 3:
				System.out.print("\n\n Exercices 3:");
				exo3();
				break;
			case 4:
				System.out.print("\n\n Exercices 4:");
				exo4();
				break;
			case 5:
				System.out.print("\n\n Exercices 5:");
				exo5();
				break;
			case 6:
				System.out.print("\n\n Exercices 6:");
				exo6();
				break;
			case 7:
				System.out.print("\n\n Exercices 7:");
				//exo7();
				break;
			case 8:
				System.out.print("\n\n Exercices 8:");
				exo8();
				break;
			default:
			 j = 1;
			break;
		}
		}
	}
}