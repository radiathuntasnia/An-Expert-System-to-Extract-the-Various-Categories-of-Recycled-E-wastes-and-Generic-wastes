code=2000
domains
	model,brand,waste,variant,type=symbol 
	price,avg,yearofmfg,totalrecycle=real 
	items=item(brand,model,variant,totalrecycle)
database
	dealer(brand,model,variant,waste,avg,yearofmfg,price)
	store(type,items)
predicates
	start
	company(model,brand)
	wastetype(model,waste) 
	average(model,avg)
	modelvariant(model,variant)
	bprice(variant,price)
	varianttype(variant,type)
	mfgyear(variant,yearofmfg)
	rule(integer)
	customrule(integer)
	bill(model,variant)
	preavg(integer,real)
	preprice(integer,real)
	usecut(yearofmfg,yearofmfg)
	dynrule(integer)
	comrule(integer)
	continue(symbol)
	dycontinue(symbol)
	cucontinue(symbol)
	comcontinue(symbol)

clauses
	company(laptops,recytec). 
	company(mobiles,recytec).
	company(tv,recytec).   
	company(hardwares,greenit).
	company(wiresbulbs,greenit).
	company(fridges,greenit).
	company(nonrecyclable,greenit).
	company(normalsolidwaste,eiki).
	company(liquidwaste,eiki).
	wastetype(laptops,electronic).
	wastetype(mobiles,electronic).
	wastetype(tv,electronic).
	wastetype(hardwares,electronic).
	wastetype(wiresbulbs,electronic).
	wastetype(fridges,electronic).
	wastetype(nonrecyclable,electronic).
	wastetype(normalsolidwaste,normal).
	wastetype(liquidwaste,normal).
	modelvariant(laptops,"dell").
	modelvariant(laptops,"asus").
	modelvariant(laptops,"lenevo").
	modelvariant(mobiles,"oppo").
	modelvariant(mobiles,"realme").
	modelvariant(mobiles,"samsung").
	modelvariant(mobiles,"vivo").
	modelvariant(tv,"singer").
	modelvariant(tv,"sony").
	modelvariant(tv,"lg").
	modelvariant(hardwares,"chips").
	modelvariant(hardwares,"processors").
	modelvariant(hardwares,"disks").
	modelvariant(wiresbulbs,"edison").
	modelvariant(wiresbulbs,"led").
	modelvariant(fridges,"walton").
	modelvariant(fridges,"whirpool").
	modelvariant(nonrecyclable,"photo version 1").
	modelvariant(nonrecyclable,"micro version 2").
	modelvariant(normalsolidwaste,"tires").
	modelvariant(normalsolidwaste,"sraps").
	modelvariant(liquidwaste,"chemicals").
	modelvariant(liquidwaste,"grease").
	varianttype("dell","base model").
	varianttype("asus","feature base model").
	varianttype("lenevo","top model").
	varianttype("oppo","base model").
	varianttype("realme","feature base model").
	varianttype("samsung","top model").
	varianttype("vivo","fully loaded model").
	varianttype("singer","base model").
	varianttype("sony","feature base model").
	varianttype("lg","top model").
	varianttype("chips","base model").
	varianttype("processors","feature base model").
	varianttype("disks","top model").
	varianttype("edison","base model").
	varianttype("led","top model").
	varianttype("walton","base model").
	varianttype("whirpool","top model").
	varianttype("photo version 1","base model").
	varianttype("micro version 2","top model").
	varianttype("tires","base model").
	varianttype("sraps","top model").
	varianttype("chemicals","base model").
	varianttype("grease","top model").
	bprice("dell",687000).
	bprice("asus",787000).
	bprice("lenevo",873000).
	bprice("oppo",1055000).
	bprice("realme",1199000).
	bprice("samsung",1319000).
	bprice("vivo",1415000).
	bprice("singer",2495000).
	bprice("sony",2515000).
	bprice("lg",2948000).
	bprice("chips",928000).
	bprice("processors",969000).
	bprice("disks",1107000).
	bprice("edison",952000).
	bprice("led",1000000).
	bprice("walton",691000).
	bprice("whirpool",775000).
	bprice("photo version 1",1653000).
	bprice("micro version 2",1668000).
	bprice("tires",4319000).
	bprice("sraps",4761000).
	bprice("chemicals",9903000).
	bprice("grease",13500000).
	mfgyear("dell",2021).
	mfgyear("asus",2018).
	mfgyear("lenevo",2020).
	mfgyear("oppo",2018).
	mfgyear("realme",2018).
	mfgyear("samsung",2021).
	mfgyear("vivo",2020).
	mfgyear("singer",2021).
	mfgyear("sony",2020).
	mfgyear("lg",2016).
	mfgyear("chips",2021).
	mfgyear("processors",2019).
	mfgyear("disks",2019).
	mfgyear("edison",2017).
	mfgyear("led",2021).
	mfgyear("walton",2015).
	mfgyear("whirpool",2020).
	mfgyear("photo version 1",2021).
	mfgyear("micro version 2",2019).
	mfgyear("tires",2021).
	mfgyear("sraps",2020).
	mfgyear("chemicals",2019).
	mfgyear("grease",2021).
	average(laptops,18.4).
	average(mobiles,21).
	average(tv,13.9).
	average(hardwares,23.4).
	average(wiresbulbs,17.7).
	average(fridges,20.35).
	average(nonrecyclable,20.4).
	average(normalsolidwaste,17.42).
	average(liquidwaste,9.8).
	
	start:-
	write("**<-OPTIONS->** \n"),
	write("1. Choose and Display our custom search result\n"),
	write("2. Display Baseavg of perticular waste\n"),
	write("3. Search waste with variants Based on company\n"),
	write("4. Search waste Based on wastetype\n"),
	write("5. Sample Bill\n"),
	write("6. display wastes excluding perticular company\n"),
	write("7. Display list of wastes Not mfg perticular year \n"),
	write("8. Search waste Based on Average\n"),
	write("9. Search waste Based on price\n"),
	write("10. Search waste Based on waste modelvariant type\n"),
	write("11. Dynamic Database\n"),
	write("12. Compound Object\n"),
	write("1000. For Exit Our System\n"),
	write("Enter your choice: "),
	readint(X),
	rule(X),
	write("Heyy Do you want to continue with main menu? (y/n) \n"),
	readln(Y),
	continue(Y).
	
	rule(1):-write("*<-Welcome special direct ans menu->*"),nl,
	write("1. Display all wastes with company\n"),
	write("2. Display list of recytec recycles\n"),
	write("3. Display list of greenit recycles\n"),
	write("4. Display list of eiki recycles\n"),
	write("5. Display list of electronic non-recycles\n"),
	write("6. Display list of normal recycles\n"),
	write("7. Display list of best average(18&above) recycles\n"),
	write("8. Display list of average(18&below) recycles\n"),
	write("9. Display list of recycles with variants in low budgets(below1000000)\n"),
	write("10. Display list of recycles with variants in high budgets(1000000&above)\n"),
	write("11. Display list of base model wastes\n"),
	write("12. Display list of feature base model wastes\n"),
	write("13. Display list of top model wastes\n"),
	write("14. Display list of feature base model wastes\n"),
	write("15. Display list of re-wastes mfg this year \n"),
	write("16. Display list of re-wastes mfg 2020 year \n"),
	write("17. Display list of re-wastes mfg 2019 year \n"),
	write("1000. Go to main menu \n"),
	write("Enter your choice: "),
	readint(X),
	customrule(X),
	write("Heyy Do you want to continue with custom menu? (y/n) \n"),
	readln(R),
	cucontinue(R).
	
	rule(2):- write("Enter waste name: "),readln(Y),upper_lower(Y,C),average(C,Z),write("Waste Baseavg: ",Z),nl.
	
	rule(3):- write("Enter Company name: "),readln(Y),upper_lower(Y,C),company(Z,C),modelvariant(Z,V),write("Waste names: ",Z," Variant: ",V),nl,fail.
	rule(3).
	
	rule(4):- write("Enter waste Type: "),readln(Y),upper_lower(Y,C),company(Z,B),wastetype(Z,C),write("Company name: ",B," Waste name: ",Z),nl,fail.
	rule(4).
	
	rule(5):-
		write("Enter Waste name: "), readln(N),upper_lower(N,M),
		write("Enter Waste model variant: "), readln(V),upper_lower(V,W),
		modelvariant(M,W),bill(M,W),fail.
	rule(5).
	rule(6):- write("Enter Company name which exclude: "),readln(V),upper_lower(V,Y),company(Z,X),not(X=Y),write("Company:",X," Waste:",Z),nl,fail.
	rule(6).
	
	rule(7):- write("Enter year which exclude"),readreal(P),mfgyear(V,Y),usecut(Y,P),modelvariant(M,V),company(M,C),write("Company: ",C," Waste: ",M," Variant: ",V," mfgyear:",Y),nl,fail.
	rule(7).
	
	rule(8):- write("Enter Average: "),readreal(Y),
				write("Enter 1. for your enter average and above average waste models\n"),
				write("Enter 2. for your enter average and below average waste models\n"),
				write("Enter your choice: "),
				readint(P),preavg(P,Y),fail.
	rule(8).
	
	rule(9):- write("Enter Price: "),readreal(Y),
				write("1. for your enter price and above price waste models\n"),
				write("2. for your enter price and below price waste models\n"),
				write("Enter your choice: "),
				readint(P),preprice(P,Y),fail.
	rule(9).
	
	rule(10):-write("Enter Model variant Type:"),readln(Y),upper_lower(Y,VT),varianttype(V,VT),bprice(V,P),modelvariant(M,V),company(M,C),
				write("Company: ",C," Waste: ",M," Variant: ",V," Price: ",P),nl,fail.
	rule(10).
	
	rule(11):-write("*<-Dynamic Database List->*"),nl,
		write("1. Enter new waste details"),nl,
		write("2. Display all the wastes"),nl,
		write("3. Display specific waste details"),nl,
		write("4. Delete a old waste"),nl,
		write("1000. Go to main menu \n"),
		write("Enter your choice: "),readint(X),dynrule(X),
		write("Heyy Do you want to continue with custom Dynamic menu? (y/n) \n"),
		readln(P),
		dycontinue(P).
	
	rule(12):-write("*<-Compound Object->*"),nl,
		write("1. enter wastes entery\n"),
		write("2. display wastes\n"),
		write("1000. Go to main menu \n"),
		write("Enter your choice: "),
		readint(N),comrule(N),
		write("Heyy Do you want to continue with compound obj menu? (y/n) \n"),
		readln(Q),
		comcontinue(Q).
		
	rule(1000).
	continue(y):- start.

	
	customrule(1):- company(X,Y),write("Company name: ",Y," Waste name: ",X),nl,fail.
	customrule(1).
	customrule(2):- company(Y,recytec),write(Y),nl,fail.
	customrule(2).
	customrule(3):- company(Y,greenit),write(Y),nl,fail.
	customrule(3).
	customrule(4):- company(Y,eiki),write(Y),nl,fail.
	customrule(4).
	customrule(5):- wastetype(Y,electronic),write(Y),nl,fail.
	customrule(5).
	customrule(6):- wastetype(Y,normal),write(Y),nl,fail.
	customrule(6).
	customrule(7):- average(Y,A),A>=18,write("Waste: ",Y," bavg: ",A),nl,fail.
	customrule(7).
	customrule(8):- average(Y,A),A<18,write("Waste: ",Y," bavg: ",A),nl,fail.
	customrule(8).
	customrule(9):- bprice(V,P),P<1000000,modelvariant(M,V),company(M,C),write("Company: ",C," Waste: ",M," Variant: ",V," Price: ",P),nl,fail.
	customrule(9).
	customrule(10):- bprice(V,P),P>=1000000,modelvariant(M,V),company(M,C),write("Company: ",C," Waste: ",M," Variant: ",V," Price: ",P),nl,fail.
	customrule(10).
	customrule(11):- varianttype(V,"base model"),modelvariant(M,V),company(M,C),write("Company: ",C," Waste: ",M," Variant: ",V),nl,fail.
	customrule(11).
	customrule(12):- varianttype(V,"feature base model"),modelvariant(M,V),company(M,C),write("Company: ",C," Waste: ",M," Variant: ",V),nl,fail.
	customrule(12).
	customrule(13):- varianttype(V,"top model"),modelvariant(M,V),company(M,C),write("Company: ",C," Waste: ",M," Variant: ",V),nl,fail.
	customrule(13).
	customrule(14):- varianttype(V,"fully loaded model"),modelvariant(M,V),company(M,C),write("Company: ",C," Waste: ",M," Variant: ",V),nl,fail.
	customrule(14).
	customrule(15):- mfgyear(V,2021),modelvariant(M,V),company(M,C),write("Company: ",C," Waste: ",M," Variant: ",V),nl,fail.
	customrule(15).
	customrule(16):- mfgyear(V,2020),modelvariant(M,V),company(M,C),write("Company: ",C," Waste: ",M," Variant: ",V),nl,fail.
	customrule(16).
	customrule(17):- mfgyear(V,2019),modelvariant(M,V),company(M,C),write("Company: ",C," Waste: ",M," Variant: ",V),nl,fail.
	customrule(17).
	customrule(1000):-start.
	cucontinue(y):-rule(1).
	cucontinue(n):-start.
	
	usecut(MFG,Input):-MFG=Input,!,fail.
	usecut(_,_).
	
	bill(M,W):-
	write("----Final Sample Bill----"), nl,
	write("company name: "),company(M,C),write(C), nl,
	write("Waste name: "),write(M), nl,
	write("Waste model variant: "),write(W), nl,
	write("Waste type: "), wastetype(M,F),write(F),nl,
	write("Base price without GST: "),bprice(W,P),write(P),nl,
	GST=(P*0.28),
	CASH=(0.01*P),
	write("GST: "), write(GST), nl,
	write("CASH Discount 1%: "), write(CASH), nl,
	FPCASH=P-CASH+GST,
	FP=P+GST,
	FPON=(P+GST-7500),
	write("Final Price Without any discount: "), write(FP), nl,
	write("Final Price With cash discount(1%): "), write(FPCASH), nl,
	write("Final Price With OnlinePayment(Flat 7500 off) discount: "), write(FPON), nl,fail.

	preavg(1,Y):-average(M,AVG),AVG>=Y,company(M,C),wastetype(M,F),write("Company: ",C," Waste: ",M," waste: ",F," Avg: ",AVG), nl,fail.
	preavg(2,Y):-average(M,AVG),AVG<=Y,company(M,C),wastetype(M,F),write("Company: ",C," Waste: ",M," waste: ",F," Avg: ",AVG), nl,fail.
	preprice(1,Y):-bprice(V,P),P>=Y,modelvariant(M,V),company(M,C),write("Company: ",C," Waste: ",M," Variant: ",V," Price: ",P), nl,fail.
	preprice(2,Y):-bprice(V,P),P<=Y,modelvariant(M,V),company(M,C),write("Company: ",C," Waste: ",M," Variant: ",V," Price: ",P), nl,fail.
	
	dynrule(1):-write("Enter Company name:"),readln(B),
		write("Ente waste name:"),readln(N),
		write("Enter variant:"),readln(C),
		write("Enter waste:"),readln(A),
		write("Enter avg:"),readreal(S),
		write("Enter yearofmfg:"),readreal(M),
		write("Enter price:"),readreal(P),
		assertz(dealer(B,N,C,A,S,M,P)),
		write("\nRecord save Successfully"),
		save("wastes.txt"),nl.
	dynrule(2):-dealer(B,X,Y,Z,S,M,P),
		write("Company:",B," Waste:",X," variant:",Y," waste:",Z," avg:",S," mfgyear:",M," price:",P),nl,fail.
	dynrule(2).
	dynrule(3):-write("Enter Waste name:"),readln(X),dealer(B,X,Y,Z,S,M,P),
		write("Company:",B," Waste:",X," variant:",Y," waste:",Z," avg:",S," mfgyear:",M," price:",P),nl.
	dynrule(4):-write("Enter the waste name:"),readln(P),nl,
		write("enter model name:"),readln(Q),nl,
		retract(dealer(_,P,Q,_,_,_,_)),
		write("\nRecord Deleted Successfully"),save("wastes.txt"),nl,fail.
	dynrule(4).
	dynrule(1000):-start.
	dycontinue(y):-rule(11).
	dycontinue(n):-start.
	
	comrule(1):-write("Enter Waste type:"),readln(Type),
		write("Enter Company name:"),readln(Brand),
		write("Enter waste name:"),readln(Model),
		write("Enter variant:"),readln(Variant),
		write("Enter totalwastes:"),readreal(Totalrecycle),
		assertz(store(Type,item(Brand,Model,Variant,Totalrecycle))),
		write("addedsuccessfully"),nl.

	comrule(2):-store(Type,item(Brand,Model,Variant,Totalrecycle)),
		write("Type:",Type," Company:",Brand," Waste:",Model," variant:",Variant," Totalrecycle:",Totalrecycle),nl,fail.
	comrule(2).
	comrule(1000):-start.
	comcontinue(y):- rule(12).
	comcontinue(n):- start.