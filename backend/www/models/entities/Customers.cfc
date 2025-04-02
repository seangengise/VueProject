<cfcomponent persistent="true" table="customers" output="false">
    <cfproperty name="id" fieldtype="id" column="customer_id" generator="native"/>
    <cfproperty name="firstName" column="first_name" ormtype="string" length="50"/>
    <cfproperty name="lastName" column="last_name" ormtype="string" length="50"/>
    <cfproperty name="email" column="email" ormtype="string" length="100" unique="true"/>
    <cfproperty name="phone" column="phone" ormtype="string" length="20"/>
</cfcomponent>
