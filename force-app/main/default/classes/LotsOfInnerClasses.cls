public with sharing class LotsOfInnerClasses {
    public LotsOfInnerClasses() {}

    public String studentRollNo;
    public PersonalInfo personalDetails;

    public class PersonalInfo{
        public Name nameInfo;
        public Address addressInfo;  
        public Others otherInfo;  
    }
    public class Name{
        public String firstName;
        public String lastName;
    }
    public class Address{
        public String addressLine1;
        public String addressLine2;
        public String addressLine3;
    }
    public class Others{
        public Integer age;
        public String nationality;
    }
}