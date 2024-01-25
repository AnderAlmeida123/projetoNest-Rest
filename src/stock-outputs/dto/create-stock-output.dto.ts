import { Type } from 'class-transformer';
import { IsDate, IsInt, IsNotEmpty, IsPositive } from 'class-validator';

export class CreateStockOutputDto {
  @IsNotEmpty()
  @IsInt()
  @IsPositive()
  product_id: number;

  @IsNotEmpty()
  @IsInt()
  @IsPositive()
  quantity: number;

  @IsDate()
  @IsNotEmpty()
  @Type(() => Date)
  date: Date;
}
