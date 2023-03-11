<?php

namespace Botble\Marketplace\Tables;

use BaseHelper;
use Botble\Ecommerce\Repositories\Interfaces\VendorSubscriptionInterface;
use Botble\Table\Abstracts\TableAbstract;
use Illuminate\Contracts\Routing\UrlGenerator;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Relations\Relation;
use Illuminate\Database\Query\Builder as QueryBuilder;
use Illuminate\Http\JsonResponse;
use MarketplaceHelper;
use Yajra\DataTables\DataTables;

class VendorSubscriptionTable extends TableAbstract
{
    protected $hasCheckbox = false;

    public function __construct(DataTables $table, UrlGenerator $urlGenerator, VendorSubscriptionInterface $VendorSubscriptionInterface)
    {
        parent::__construct($table, $urlGenerator);

        $this->repository = $VendorSubscriptionInterface;
    }

    public function ajax(): JsonResponse
    {
        $data = $this->table
            ->eloquent($this->query())
            ->editColumn('checkbox', function ($item) {
                return $this->getCheckbox($item->id);
            })
            ->addColumn('operations', function ($item) {
                return view(MarketplaceHelper::viewPath('dashboard.table.actions'), [
                    'update' => 'marketplace.vendor.plans',
                    'item' => $item,
                ])->render();
            });

        return $this->toJson($data);
    }

    public function query(): Relation|Builder|QueryBuilder
    {
        $storeId = auth('customer')->user()->store->id;
        $query = $this->repository
            ->getModel()
            ->select(['*'])
            ->where('store_id', $storeId);

        return $this->applyScopes($query);
    }

    public function columns(): array
    {
        return [
            'id' => [
                'title' => trans('core/base::tables.id'),
                'width' => '20px',
                'class' => 'text-start',
            ],
            'detail' => [
                'name' => 'text',
                'title' => trans('plugins/ecommerce::vendorsubscription.name'),
                'class' => 'text-start',
            ],
            'total_used' => [
                'title' => trans('plugins/ecommerce::vendorsubscription.used'),
                'width' => '100px',
            ],
            'start_date' => [
                'title' => trans('plugins/ecommerce::vendorsubscription.start_date'),
                'class' => 'text-center',
            ],
            'end_date' => [
                'title' => trans('plugins/ecommerce::vendorsubscription.end_date'),
                'class' => 'text-center',
            ],
        ];
    }


}
