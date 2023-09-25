namespace makerspaceInventory;

entity Hardware {
  key ID: UUID;
  type: String(200);
  quantity: Integer;
}

