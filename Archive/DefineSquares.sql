declare @Files as nvarchar(15) = 'A,B,C,D,E,F,G,H';-- the files  
--use this later when i come to make the engine.  
--for now we just want to make a FEN reader that will show the changes in the board
with board as 
(
--declare @Files as nvarchar(15) = 'A,B,C,D,E,F,G,H';-- the files  
--select value as gfile, ordinal as gfilenum from string_split(@files, ',', 1) union all
select value as gFile, ordinal as gFileNum, ROW_NUMBER() over (partition by value order by ordinal) as grank from 
	(
	/*I didnt want to write out all 64 squares, so I used string_split to create the board from the files*/
	--declare @Files as nvarchar(15) = 'A,B,C,D,E,F,G,H';-- the files  
	select * from string_split(@files, ',', 1) union all
	select * from string_split(@files, ',', 1) union all
	select * from string_split(@files, ',', 1) union all
	select * from string_split(@files, ',', 1) union all
	select * from string_split(@files, ',', 1) union all
	select * from string_split(@files, ',', 1) union all
	select * from string_split(@files, ',', 1) union all
	select * from string_split(@files, ',', 1) 
	) as preboard 
	--going to use the preboard for the engine and determining what piece is selected 
)