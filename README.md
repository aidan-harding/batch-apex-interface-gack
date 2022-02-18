# Batch Apex Interface GACK

Shows that if you extend the `Database.Batchable<SObject>` interface, and then try to run a batch with a class 
implementing your extended interface, you get a GACK

Just run [MyBatchTest](force-app/main/default/classes/MyBatchTest.cls)

```
Internal Salesforce Error: 414731505-23003 (-345629689) (-345629689)
```