export interface CreateListingDTO {
  name: string;
  description: string;
  private_room: boolean;
  price: number;
  type_id: number;
  user_id: number;
  address_id: number;
}