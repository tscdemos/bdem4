namespace makerspaceInventory;

entity Category {
  key ID: UUID;
  internalID: String(200);
  name: String(200);
  description: String(2000);
  hardware: Association to many Hardware on hardware.category = $self;
}

entity Hardware {
  key ID: UUID;
  type: String(200);
  quantity: Integer;
  category: Association to Category;
}

entity Item {
  key ID: UUID;
  serialNumber: String(200);
  purchaseDate: DateTime;
  purchaseLocation: String(200);
  storageLocation: String(200);
  hardware: Association to Hardware;
}