ReadMe.txt

DB ���� ��ü ����� ��
1. ***DAO Interface�� �����Ѵ�.
2. mapper ������ ***Mapper.xml�� �����ؼ� 1���� ���� DAO�� SQL �κ��� �����.
3. root-context.xml�� DAO Interface ����ü�� Mapper�� ���� ����� ���� ����� �Ѵ�. 

DB ���� �帧
Request ->
RowMapper(Servlet) -> 
Controller -> 
Service Interface -> Service -> 
DAO Interface -> DAO -> 
Controller -> 
ViewResolver(Servlet) -> 
Response