public with sharing class ClassWithInterfaceAndEnum {
    String tracker;
    public ClassWithInterfaceAndEnum(String aTracker) {
        this.tracker = aTracker;
    }

    interface TestInterface {
        Double discount();
        Double discount(Double percent);
    }

    
    enum TestEnum {ONE, TWO, THREE, FOUR}
}