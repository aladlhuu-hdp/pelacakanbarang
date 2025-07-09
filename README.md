# Delivery Tracking Application
Database System Assignment
Informatics Engineering Student
Hacienda Express Delivery Tracking

The main feature of this tracking system is its ability to display real-time delivery information via the tracking number. Users simply enter the tracking number provided during delivery, and the system will immediately display the item's current status, including its last location, shipping stage, and confirmation of arrival at its destination.

It can be concluded that the database system for tracking goods has been designed using a robust relational approach. Several main tables, such as customer, package, shipment, courier, and tracking, are interconnected through foreign key relationships. This demonstrates that data integrity has been well maintained.
Furthermore, the use of the search_cstracking auxiliary table, a result of denormalization, facilitates comprehensive information searches across multiple entities. This table stores comprehensive information on customers, item types, shipping statuses, and shipping costs, allowing users to quickly view transaction details.
The application of indexes to several key columns also demonstrates attention to query efficiency. For example, indexes on the item_type and name columns in the search_cstracking table optimize search processes based on item type or customer name.

Although the database structure and relationships are already quite good, there are still several aspects that can be improved to support system scalability and performance:
Adding Indexes to Strategic Columns
It is recommended to add indexes to columns frequently used in WHERE conditions, such as status_pengirim in the shipment table, to prevent full table scans that can slow query execution.
Monitoring Query Performance
Use features like EXPLAIN and SHOW PROFILE to regularly analyze and monitor query performance so that bottlenecks can be identified and optimized early.
Consistency in Denormalized Tables
Because the search_cstracking table stores aggregated data, periodic validation is necessary to ensure data consistency and synchronization with the primary source.
Efficient Use of Views
If you want to avoid data duplication, using VIEWs can be an alternative to auxiliary tables, while maintaining execution efficiency.
