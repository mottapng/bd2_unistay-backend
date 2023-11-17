export interface CreateListingDTO {
  name: string;
  description: string;
  private_room: boolean;
  price: number;
  qnt_bedrooms: number;
  qnt_bathrooms: number;
  qnt_garage: number;
  type_id: number;
  user_id: string;
  address_id: string;
}