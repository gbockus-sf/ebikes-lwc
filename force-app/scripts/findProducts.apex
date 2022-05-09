List<Product__c> products = [SELECT Id, Name, msrp__c, Product_Family__c from Product__c LIMIT 10];

System.debug('number of products ' + products.size());

for (Product__c singleProduct : products) {
    System.debug('ProductName: ' + singleProduct.Name);
}

for (Product__c singleProduct : products) {
    List<Product__c> releatedProducts = ProductController.getSimilarProducts(singleProduct.Id, singleProduct.Product_Family__c);
    System.debug('Releated Product: ' + singleProduct.Name + ' count: ' + releatedProducts.size());
    
}