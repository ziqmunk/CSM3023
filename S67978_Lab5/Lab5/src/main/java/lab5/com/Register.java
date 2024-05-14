/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lab5.com;

/**
 *
 * @author Lenovo
 */
public class Register {
    private String icNo;
    private String name;
    private int trainingType;
    private int noOfPax;
    private int isStudent;

    public Register() {
    }

    public Register(String icNo, String name, int trainingType, int noOfPax, int isStudent) {
        this.icNo = icNo;
        this.name = name;
        this.trainingType = trainingType;
        this.noOfPax = noOfPax;
        this.isStudent = isStudent;
    }

    public String getIcNo() {
        return icNo;
    }

    public void setIcNo(String icNo) {
        this.icNo = icNo;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getTrainingType() {
        return trainingType;
    }

    public void setTrainingType(int trainingType) {
        this.trainingType = trainingType;
    }

    public int getNoOfPax() {
        return noOfPax;
    }

    public void setNoOfPax(int noOfPax) {
        this.noOfPax = noOfPax;
    }

    public int getIsStudent() {
        return isStudent;
    }

    public void setIsStudent(int isStudent) {
        this.isStudent = isStudent;
    }
    
    public String getTrainingName(int trainingType){
        String name = "";
        switch(trainingType){
            case 1:
                name = "C++ training";
                break;
            case 2:
                name = "Java for beginner";
                break;
            case 3:
                name = "HTML5";
                break;
            case 4: 
                name = "Java EEE";
                break;
            case 5:
                name = "Android Programming";
                break;
        }
        return name;
    }
    
    public double getTrainingFee(int trainingType, int noOfPax, int isStudent){
        double fee = 0;
        
        if(isStudent == 1){
            switch(trainingType){
            case 1:
                fee = 3000 * noOfPax  * 0.9;
                break;
            case 2:
                fee = 3000 * noOfPax * 0.9;
                break;
            case 3: 
                fee = 2800 * noOfPax * 0.9;
                break;
            case 4:
                fee = 5500 * noOfPax * 0.9;
                break;
            case 5:
                fee = 3200 * noOfPax * 0.9;
            }
        }else{
            switch(trainingType){
            case 1:
                fee = 3000 * noOfPax;
                break;
            case 2:
                fee = 3000 * noOfPax;
                break;
            case 3: 
                fee = 2800 * noOfPax;
                break;
            case 4:
                fee = 5500 * noOfPax;
                break;
            case 5: 
                fee = 3200 * noOfPax;
                break;
            }
        }
        return fee;
    }
    
    public String stud2Str(int isStudent){
        String studStr = "";
        if(isStudent == 1){
            studStr = "Yes";
        }else{
            studStr = "No";
        }
        return studStr;
    }
    
            
}
