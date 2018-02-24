begin try
	begin transaction
		insert into [dbo].[UserClaims] ([UserId], [Type], [Value], [ValueType])
		values  (1,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/gender', 'Male', 'http://www.w3.org/2001/XMLSchema#string'),
				(1,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/country', 'USA', 'http://www.w3.org/2001/XMLSchema#string'),

				(2,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/gender', 'Female', 'http://www.w3.org/2001/XMLSchema#string'),
				(2,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/country', 'USA', 'http://www.w3.org/2001/XMLSchema#string'),
				
				(3,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/gender', 'Male', 'http://www.w3.org/2001/XMLSchema#string'),
				(3,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/country', 'Greece', 'http://www.w3.org/2001/XMLSchema#string');
	commit transaction;
end try
begin catch
	rollback transaction;
	raiserror('Error while inserting', 0, 1) with nowait;
end catch