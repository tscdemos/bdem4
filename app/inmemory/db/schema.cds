namespace makerspaceInventory;

entity Hardware {
  key ID: UUID;
  type: String(200);
  quantity: Integer;
}

entity Item {
  key ID: UUID;
  serialNumber: String(200);
  purchaseDate: DateTime;
  purchaseLocation: String(200);
  storageLocation: String(200);
  hardware: Association to Hardware;
}