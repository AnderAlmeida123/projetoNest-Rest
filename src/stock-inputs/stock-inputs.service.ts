import { Injectable } from '@nestjs/common';
import { CreateStockInputDto } from './dto/create-stock-input.dto';
import { PrismaService } from '../prisma/prisma.service';
import { NotFoundError } from 'src/products/errors';

@Injectable()
export class StockInputsService {
  constructor(private prismaService: PrismaService) {}

  async create(createStockInputDto: CreateStockInputDto) {
    const product = await this.prismaService.product.findUnique({
      where: { id: createStockInputDto.product_id },
    });
    if (!product) {
      throw new NotFoundError('Product not found');
    }
    return await this.prismaService.stockInput.create({
      data: {
        productId: createStockInputDto.product_id,
        quantity: createStockInputDto.quantity,
        date: createStockInputDto.date,
      },
    });
  }

  findAll() {
    return `This action returns all stockInputs`;
  }

  findOne(id: number) {
    return `This action returns a #${id} stockInput`;
  }
}
