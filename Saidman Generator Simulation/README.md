### Saidman Generator Simulation for kidney excahnges 
We utilized some parts of the code written for [this project](https://github.com/JohnDickerson/KidneyExchange) and modified it according to our simulation environment. We updated the used version of Saidman simulator to generate kidney exchange data that has a distribution mimics the UNOS pool as of April 15, 2013 and is computed based on the Cumulative Match Report performed by the data analysis group in [this study](https://dl.acm.org/citation.cfm?id=2482596).

#### System requirements 
32-bit/64-bit Windows/Linux machine with (JDK and JRE that supports  `junit-*.*.jar ` and  `jgrapht-*.*.jar `).
In this version, we used  `junit-4.7.jar ` and  `jgrapht-0.8.2.jar `.

#### Quick usage guide 
1. Clone the [GitHub repo](https://github.com/SaraEl-Metwally/ALO_algorithm_for_Kidney_Exchanges), e.g. with:
> `git clone https://github.com/SaraEl-Metwally/ALO_algorithm_for_Kidney_Exchanges.git`
2. Go to the folder Saidman Generator Simulation.
3. Compile the java file named `KidenyExchangeProgramGeneratorTest.java` with the following command: 
```
javac -cp ".:jgrapht-0.8.2.jar:junit-4.7.jar" KidenyExchangeProgramGeneratorTest.java
```
4. The two parameters supplied to the simulator is `No. pairs` and `prob. Alt`, which are the total number of pairs in the KPD pool and the probability that donors are altruists respectively. 
5. Run the java file named `KidenyExchangeProgramGeneratorTest.java` with the following command:  
```
java -cp ".:jgrapht-0.8.2.jar:junit-4.7.jar" KidenyExchangeProgramGeneratorTest 200 0.045 
```
