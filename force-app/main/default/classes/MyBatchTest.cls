/**
 * @author aidan@nebulaconsulting.co.uk
 * @date 17/02/2022
 */

@IsTest
private class MyBatchTest {

    public with sharing class MyBatch implements MyBatchInterface {

        public Database.QueryLocator start(Database.BatchableContext param1) {
            return Database.getQueryLocator([SELECT Id FROM Account]);
        }

        public void execute(Database.BatchableContext param1, List<Object> param2) {
        }

        public void finish(Database.BatchableContext param1) {
        }
    }

    @IsTest
    static void testBehavior() {
        Database.executeBatch(new MyBatch());
    }
}