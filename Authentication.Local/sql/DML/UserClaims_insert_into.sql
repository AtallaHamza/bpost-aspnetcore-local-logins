begin try
	begin transaction
		insert into [dbo].[UserClaims] ([UserId], [Type], [Value], [ValueType])
		values  (1,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/nameidentifier', 'johndoe', 'http://www.w3.org/2001/XMLSchema#string'),
				(1,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/dateofbirth', '2000-01-05', 'http://www.w3.org/2001/XMLSchema#date'),
				(1,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', 'john@doe.com', 'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress'),
				(1,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name', 'John', 'http://www.w3.org/2001/XMLSchema#string'),
				(1,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/surname', 'Doe', 'http://www.w3.org/2001/XMLSchema#string'),
				(1,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/gender', 'Male', 'http://www.w3.org/2001/XMLSchema#string'),
				(1,'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/country', 'USA', 'http://www.w3.org/2001/XMLSchema#string');
	commit transaction;
end try
begin catch
	rollback transaction;
	raiserror('Error while inserting', 0, 1) with nowait;
end catch