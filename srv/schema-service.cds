using {Products as my} from '../db/schema';

service Api {
    entity Products   as projection on my.Products;
    entity Suppliers  as projection on my.Suppliers;
    entity Categories as projection on my.Categories;

    action batchProducts(value: array of Products) returns oMessage;
}

type oMessage {
    code    : Integer;
    message : String(255);
}
