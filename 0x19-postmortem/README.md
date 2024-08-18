

Postmortem Report: Outage in KTTC Gigiri College ERP System

As a rule in Karatina University ,students must go for attachment at third year .On 5th,July.2021.I began my attachment at System One Limited,where i was posted at Gigiri,Nairobi.My main task was to install the new system at the Kenya Technical Trainer College,train the staff,update the system ..etc.During the three months their were some issues experienced before and after the implementation of both local based system called Colemis and online system .On August 28, 2021, the KTTC Gigiri College ERP System suffered a major outage affecting the student enrollment and grade reporting modules. During this period, users were unable to access enrollment forms, view grades, or submit academic records. 
Issue Summary:
Outage Duration:
Start Time: August 28, 2021, 11:00 AM
End Time: August  28, 2021, 15:00 PM
Total Duration: 3 hours

Root Cause:
The root cause of the outage was a critical failure in the distributed caching layer that was introduced during a system upgrade. The caching layer, responsible for managing frequent data requests efficiently, was misconfigured due to a bug in the deployment script. This misconfiguration led to excessive memory consumption and server crashes, which in turn caused significant downtime for the ERP system.
Incident Timeline: KTTC Gigiri College ERP System Outage
August 28, 2021, 11:00 AM - Issue detected: System becomes unresponsive; student enrollment and grade reporting modules are affected.
August 28, 2021, 11:05 AM - Detection method: Initial alerts triggered by monitoring tools indicating high memory usage and server crashes.
August 28, 2021, 11:15 AM- Investigation begins: IT team starts by checking server logs and application performance metrics.
August 28, 2021, 11:30 AM- Assumptions: Initial assumption was a possible server overload or network issue.
August 28, 2021, 12:00 PM- Misleading path: Investigation veers into network issues and server load balancing, which do not resolve the problem.
August 28, 2021, 12:30 PM - Escalation: Incident escalated to the Database and Caching Layer teams after discovering consistent errors related to caching.
August 28, 2021, 13:00 PM - Actions taken: Focus shifts to the caching layer; rollback of recent changes to the caching configuration is initiated.
August 28, 2021, 14:00 PM - Partial resolution: Rollback addresses some issues, but additional problems with data consistency are identified.
August 28, 2021, 15:00 PM - Resolution: Full system functionality restored after final adjustments to the caching layer and verification of system stability.

Impact Analysis:
User Experience: During the outage, students could not access enrollment forms, which delayed their ability to register for courses. Faculty members were unable to submit or view grades, causing administrative bottlenecks and potential delays in grade reporting. This disruption affected 50% of students and 30% of faculty.
Business Impact: The outage had a notable impact on academic scheduling and grading processes, which are critical to the academic calendar and student satisfaction. Delays in course registration and grade reporting potentially affected student progress and faculty workloads.

Root Cause Analysis:
The outage was primarily caused by a failure in the distributed caching layer due to a misconfiguration introduced during a system upgrade. The caching layer, which was supposed to optimize data retrieval, instead caused excessive memory usage and server crashes because the deployment script contained a bug that misconfigured the caching settings. This led to a cascade of failures that affected system performance and availability.
Mitigation and Prevention:
Immediate Actions Taken:
Long-Term Actions:
Deployment Testing
Monitoring Improvements
Backup Procedures
Documentation and Training






Root Cause and Resolution: KTTC Gigiri College ERP System Outage
Root Cause:
The outage experienced on August 28, 2021, was caused by a critical failure in the distributed caching layer of the KTTC Gigiri College ERP system.
Detailed Cause: The distributed caching layer, introduced to improve data retrieval efficiency, was misconfigured during a recent system upgrade. The deployment script that managed the caching layer's configuration contained a bug that set incorrect memory limits and cache eviction policies. This misconfiguration led to excessive memory consumption and overloading of the caching servers. As the cache servers became overwhelmed, they started failing, causing cascading failures in the application. The ERP system relies heavily on this caching layer to manage frequent data requests, so when it failed, the application could not access or serve the necessary data, leading to the system's unresponsiveness.


Resolution:
To resolve the outage, a series of corrective actions were taken:
Detailed Fix:
Rollback Configuration Changes:
The IT team began by rolling back the recent changes made to the caching layer configuration. This involved reverting the deployment script to its previous version before the misconfiguration occurred. The rollback process was carried out to restore the caching settings to a stable state.
Monitoring and Verification:
Post-rollback, the system's performance and stability were closely monitored. Additional checks were performed to ensure no residual issues remained.
Final Adjustments:
Final adjustments were made to optimize the caching layer configuration further. This included tuning memory allocations and cache policies based on observed performance metrics to prevent similar issues in the future.
Restoration of Full Functionality:
Once the caching layer was stable, and all functionality was restored, the incident was officially closed. 
Areas for Improvement or Fixing
System Integration Issues
User Training and Adoption
Data Accuracy and Migration
System Performance
Customization Needs
Support and Maintenance
Compliance and Reporting

List of Specific Tasks (TODO)
System Integration Issues:
Patch Integration Issues:
Conduct Integration Tests: 
Develop Integration Documentation: 
User Training and Adoption:
Create Training Materials
Schedule Training Sessions
Establish a Help Desk
Data Accuracy and Migration:
Audit Existing Data
Develop Migration 
Perform Data Migration
System Performance:
Optimize Server Configuration:
Implement Load Balancing: 
Monitor System Performance: 
Customization Needs:
Gather User Feedback: 
Develop Custom Features: 
Support and Maintenance:
Establish Support Protocols: 
Schedule Regular Maintenance:
Compliance and Reporting:
Review Compliance Requirements
Develop Reporting Templates
