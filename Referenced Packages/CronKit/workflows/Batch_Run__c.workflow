<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>TriggerBatchRun</fullName>
        <description>Sets the flag that causes the batch job Apex trigger fire and run batch instructions.</description>
        <field>Trigger_Batch_Run__c</field>
        <literalValue>1</literalValue>
        <name>Trigger Batch Run</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Sample Scheduler 1</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Batch_Run__c.Scheduled_To_Run__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Batch_Run__c.Completed__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Batch_Run__c.Trigger_Scheduler_1__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>This rule and &apos;Sample Scheduler 2&apos; are samples for use with CronKit.

To set up batch job processing, clone both rules and add a time-based workflow action to each that runs the field update action &quot;Trigger Batch Run&quot; 0 hours after &quot;Scheduled To Run&quot;.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Sample Scheduler 2</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Batch_Run__c.Scheduled_To_Run__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Batch_Run__c.Completed__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Batch_Run__c.Trigger_Scheduler_2__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>This rule and &apos;Sample Scheduler 1&apos; are samples for use with CronKit.

To set up batch job processing, clone both rules and add a time-based workflow action to each that runs the field update action &quot;Trigger Batch Run&quot; 0 hours after &quot;Scheduled To Run&quot;.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
