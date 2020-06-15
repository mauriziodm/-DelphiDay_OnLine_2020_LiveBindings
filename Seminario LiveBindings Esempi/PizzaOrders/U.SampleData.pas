unit U.SampleData;

interface

type

  TSampleData = class
  private
    class procedure CreatePizzas;
    class procedure CreateCustomers;
    class procedure CreateOrders;
  public
    class procedure CheckForSampleData;
  end;

implementation

uses
  Model.Interfaces, iORM, System.IOUtils, Model.Order, System.SysUtils,
  Model.OrderItem, FireDAC.Comp.Client, Model.PhoneNumber, Model.Customer;

{ TsampleData }

class procedure TSampleData.CheckForSampleData;
var
  LMemTable: TFDMemTable;
begin
  io.StartTransaction;
  try try
    LMemTable := io.SQL('SELECT COUNT(*) FROM [TPizza]').ToMemTable;
    if LMemTable.Fields[0].AsInteger = 0 then
    begin
      Self.CreatePizzas;
      Self.CreateCustomers;
      Self.CreateOrders;
    end;
    io.CommitTransaction;
  except
    io.RollbackTransaction;
  end;
  finally
    if Assigned(LMemTable) then
      LMemTable.Free;
  end;
end;

class procedure TSampleData.CreateCustomers;
var
  LCustomer: TCustomer;
begin
  LCustomer := TCustomer.Create;
  LCustomer.FirstName := 'Maurizio';
  LCustomer.LastName := 'Del Magno';
  LCustomer.Address := 'Riccione, viale Napoli 24';
  LCustomer.Numbers.Add(  TPhoneNumber.Create('Mobile', '329 058 3381')  );
  LCustomer.Numbers.Add(  TPhoneNumber.Create('Home', '0541 605 905')  );
  LCustomer.Numbers.Add(  TPhoneNumber.Create('Office', '0541 127 687')  );
  io.Persist(LCustomer);
  LCustomer.Free;

  LCustomer := TCustomer.Create;
  LCustomer.FirstName := 'Omar';
  LCustomer.LastName := 'Bossoni';
  LCustomer.Address := 'Quinzano d''Oglio, via Dei Mille 3';
  LCustomer.Numbers.Add(  TPhoneNumber.Create('Mobile', '336 172 3874')  );
  LCustomer.Numbers.Add(  TPhoneNumber.Create('Office', '030 388 998')  );
  io.Persist(LCustomer);
  LCustomer.Free;

  LCustomer := TCustomer.Create;
  LCustomer.FirstName := 'Thomas';
  LCustomer.LastName := 'Ranzetti';
  LCustomer.Address := 'Quinzano d''Oglio, via Roma 45';
  LCustomer.Numbers.Add(  TPhoneNumber.Create('Mobile', '348 736 8729')  );
  io.Persist(LCustomer);
  LCustomer.Free;

  LCustomer := TCustomer.Create;
  LCustomer.FirstName := 'Fabio';
  LCustomer.LastName := 'Codebue';
  LCustomer.Address := 'Brescia, via Della Repubblica 10';
  LCustomer.Numbers.Add(  TPhoneNumber.Create('Mobile', '329 835 7638')  );
  LCustomer.Numbers.Add(  TPhoneNumber.Create('Mobile', '331 763 2788')  );
  LCustomer.Numbers.Add(  TPhoneNumber.Create('Home', '030 798 387')  );
  LCustomer.Numbers.Add(  TPhoneNumber.Create('Office', '030 542 983')  );
  io.Persist(LCustomer);
  LCustomer.Free;

  LCustomer := TCustomer.Create;
  LCustomer.FirstName := 'Marco';
  LCustomer.LastName := 'Mottadelli';
  LCustomer.Address := 'Besana in Brianza, via Einstein 5';
  LCustomer.Numbers.Add(  TPhoneNumber.Create('Mobile', '328 123 5678')  );
  LCustomer.Numbers.Add(  TPhoneNumber.Create('Office', '021 865 879')  );
  io.Persist(LCustomer);
  LCustomer.Free;

  LCustomer := TCustomer.Create;
  LCustomer.FirstName := 'Carlo';
  LCustomer.LastName := 'Narcisi';
  LCustomer.Address := 'Rimini, viale Cervino 123';
  LCustomer.Numbers.Add(  TPhoneNumber.Create('Mobile', '387 143 8739')  );
  LCustomer.Numbers.Add(  TPhoneNumber.Create('Home', '0541 694 289')  );
  LCustomer.Numbers.Add(  TPhoneNumber.Create('Office', '0541 987 654')  );
  io.Persist(LCustomer);
  LCustomer.Free;

  LCustomer := TCustomer.Create;
  LCustomer.FirstName := 'Antonio';
  LCustomer.LastName := 'Polito';
  LCustomer.Address := 'Battipaglia, via Dei Luminari 187';
  LCustomer.Numbers.Add(  TPhoneNumber.Create('Mobile', '399 736 9988')  );
  LCustomer.Numbers.Add(  TPhoneNumber.Create('Office', '081 555 666')  );
  io.Persist(LCustomer);
  LCustomer.Free;
end;

class procedure TSampleData.CreateOrders;
var
  LOrder: TOrder;
begin
  LOrder := TOrder.Create;
  LOrder.Note := '19:30 BEN COTTA!!!';
  LOrder.Customer := io.Load<TCustomer>.ByOID(1).ToObject;
  LOrder.OrderItems.Add(  TOrderItem.Create(io.Load<IPizza>.ByOID(1).ToObject, 1)  );
  LOrder.OrderItems.Add(  TOrderItem.Create(io.Load<IPizza>.ByOID(2).ToObject, 3)  );
  io.Persist(LOrder);
  LOrder.Free;

  LOrder := TOrder.Create;
  LOrder.Note := '19:45';
  LOrder.Customer := io.Load<TCustomer>.ByOID(2).ToObject;
  LOrder.OrderItems.Add(  TOrderItem.Create(io.Load<IPizza>.ByOID(2).ToObject, 3)  );
  LOrder.OrderItems.Add(  TOrderItem.Create(io.Load<IPizza>.ByOID(3).ToObject, 5)  );
  LOrder.OrderItems.Add(  TOrderItem.Create(io.Load<IPizza>.ByOID(4).ToObject, 1)  );
  io.Persist(LOrder);
  LOrder.Free;

  LOrder := TOrder.Create;
  LOrder.Note := '20:05 ALLERGICO AI CAPPERI';
  LOrder.Customer := io.Load<TCustomer>.ByOID(3).ToObject;
  LOrder.OrderItems.Add(  TOrderItem.Create(io.Load<IPizza>.ByOID(1).ToObject, 3)  );
  LOrder.OrderItems.Add(  TOrderItem.Create(io.Load<IPizza>.ByOID(5).ToObject, 2)  );
  LOrder.OrderItems.Add(  TOrderItem.Create(io.Load<IPizza>.ByOID(6).ToObject, 2)  );
  io.Persist(LOrder);
  LOrder.Free;
end;

class procedure TSampleData.CreatePizzas;
var
  LPizza: IPizza;
begin
  LPizza := io.Create<IPizza>;
  LPizza.Name := 'Margherita pizza';
  LPizza.Price := 4.5;
  LPizza.Photo.LoadFromFile(TPath.Combine(TPath.GetDocumentsPath, 'MargheritaPizza.jpg'));
  io.Persist(LPizza);

  LPizza := io.Create<IPizza>;
  LPizza.Name := 'Capricciosa pizza';
  LPizza.Price := 6.5;
  LPizza.Photo.LoadFromFile(TPath.Combine(TPath.GetDocumentsPath, 'CapricciosaPizza.jpg'));
  io.Persist(LPizza);

  LPizza := io.Create<IPizza>;
  LPizza.Name := 'Pepperoni pizza';
  LPizza.Price := 5.7;
  LPizza.Photo.LoadFromFile(TPath.Combine(TPath.GetDocumentsPath, 'PepperoniPizza.jpg'));
  io.Persist(LPizza);

  LPizza := io.Create<IPizza>;
  LPizza.Name := 'Love pizza';
  LPizza.Price := 8.5;
  LPizza.Photo.LoadFromFile(TPath.Combine(TPath.GetDocumentsPath, 'LovePizza.jpg'));
  io.Persist(LPizza);

  LPizza := io.Create<IPizza>;
  LPizza.Name := 'Four seasons pizza';
  LPizza.Price := 7.5;
  LPizza.Photo.LoadFromFile(TPath.Combine(TPath.GetDocumentsPath, 'Pizza4Stagioni.jpg'));
  io.Persist(LPizza);

  LPizza := io.Create<IPizza>;
  LPizza.Name := 'Tuna & onion pizza';
  LPizza.Price := 7.2;
  LPizza.Photo.LoadFromFile(TPath.Combine(TPath.GetDocumentsPath, 'PizzaTonnoCipolla.jpg'));
  io.Persist(LPizza);
end;

end.
