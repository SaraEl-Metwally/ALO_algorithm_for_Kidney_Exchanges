import static org.junit.Assert.*;
import org.jgrapht.generate.CompleteGraphGenerator;
import org.jgrapht.generate.GraphGenerator;
import org.junit.Test;


import java.util.HashSet;
import java.util.Random;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;
import java.io.PrintWriter;
import java.io.FileWriter;
import java.io.FileNotFoundException;
import java.io.UnsupportedEncodingException;

public class KidenyExchangeProgramGeneratorTest {
	
	
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
	     System.out.println("--- Saidman Generator for simulating Kidney Excahnge Pool");
             System.out.println("--- Simulation is based on the reported UNOS data As of April, 2013.");
             System.out.println("--- Quick Usage: java -cp  \".:jgrapht-0.8.2.jar:junit-4.7.jar \" KidenyExchangeProgramGeneratorTest No_Pairs Prob_Alt_donor");
             
             int firstArg=0;
             Double secondArg=0.0;
                   if (args.length > 0) 
                    {
                     try {
                           firstArg = Integer.parseInt(args[0]);
                           secondArg = Double.parseDouble(args[1]);
                           if(secondArg<0||secondArg>1)
                             { System.err.println("--- Argument" + args[1] + " must be a double probability value between 0 and 1.");
                               System.exit(1);
                             }
                         } 
                     catch (NumberFormatException e) 
                         {
                           System.err.println("--- Argument" + args[0] + " must be an integer value [Number of Pairs].");
                           System.err.println("--- Argument" + args[1] + " must be a double probability value [Altruist Donor].");
                         }
                    }
                    else
                       {
                           System.err.println("--- Missing arguments < NO_Pairs > and < Prob_Alt_Donor > ");
                           System.exit(1);
                       }
            

             int no_alt=(int)Math.round(new Double(firstArg*secondArg));
             System.out.println("--- Number of pairs in KPD pool:"+Integer.toString(firstArg));
	     System.out.println("--- Number of altruists in KPD pool:"+Integer.toString(no_alt));            
	     PoolGenerator poolGen = new SaidmanPoolGenerator(new Random());
	     Pool p = poolGen.generate(firstArg-no_alt,no_alt);
	     assertEquals(p.getAltruists().size(), no_alt);
	     assertEquals(p.getPairs().size(),firstArg-no_alt);
	     assertEquals(p.vertexSet().size(),firstArg);
             p.writeToVizFile();
                
              


    
	}

}
