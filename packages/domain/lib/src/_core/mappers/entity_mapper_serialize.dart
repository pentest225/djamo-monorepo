part of 'entity_mapper_deserialize.dart';

JsonMap serialize<T>(T e) {
  return switch (T) {
    //##ADD YOUR ENTITY HERE
    VaultSavingProductEntity => _mapper
        .convert<VaultSavingProductEntity, VaultSavingProductModel>(
          e as VaultSavingProductEntity,
        )
        .toJson(),
    PaymentLinkTransactionEntity => _mapper
        .convert<PaymentLinkTransactionEntity, PaymentLinkTransactionModel>(
          e as PaymentLinkTransactionEntity,
        )
        .toJson(),
    ChargeEntity => _mapper.convert<ChargeEntity, ChargeModel>(e as ChargeEntity).toJson(),
    FeesEntity => _mapper.convert<FeesEntity, FeesModel>(e as FeesEntity).toJson(),
    CompanyEntity => _mapper.convert<CompanyEntity, CompanyModel>(e as CompanyEntity).toJson(),
    ProductPropertyEntity => _mapper
        .convert<ProductPropertyEntity, ProductPropertyModel>(
          e as ProductPropertyEntity,
        )
        .toJson(),
    RecurringSubscriptionEntity => _mapper
        .convert<RecurringSubscriptionEntity, RecurringSubscriptionModel>(
          e as RecurringSubscriptionEntity,
        )
        .toJson(),
    LoanProductEntity => _mapper.convert<LoanProductEntity, LoanProductModel>(e as LoanProductEntity).toJson(),
    LoanExclusionReasonEntity => _mapper
        .convert<LoanExclusionReasonEntity, LoanExclusionReasonModel>(
          e as LoanExclusionReasonEntity,
        )
        .toJson(),
    LoanEligibilityEntity => _mapper
        .convert<LoanEligibilityEntity, LoanEligibilityModel>(
          e as LoanEligibilityEntity,
        )
        .toJson(),
    LoanFeesEntity => _mapper.convert<LoanFeesEntity, LoanFeesModel>(e as LoanFeesEntity).toJson(),
    LoanScoreEntity => _mapper.convert<LoanScoreEntity, LoanScoreModel>(e as LoanScoreEntity).toJson(),
    LoanScoreDataEntity => _mapper
        .convert<LoanScoreDataEntity, LoanScoreDataModel>(
          e as LoanScoreDataEntity,
        )
        .toJson(),
    LoanScoreCriteriaEntity => _mapper
        .convert<LoanScoreCriteriaEntity, LoanScoreCriteriaModel>(
          e as LoanScoreCriteriaEntity,
        )
        .toJson(),
    LoanEligibilityCriteriaEntity => _mapper
        .convert<LoanEligibilityCriteriaEntity, LoanEligibilityCriteriaModel>(
          e as LoanEligibilityCriteriaEntity,
        )
        .toJson(),
    LoanEntity => _mapper.convert<LoanEntity, LoanModel>(e as LoanEntity).toJson(),
    LoanExtrasEntity => _mapper.convert<LoanExtrasEntity, LoanExtrasModel>(e as LoanExtrasEntity).toJson(),
    LoanOfferEntity => _mapper.convert<LoanOfferEntity, LoanOfferModel>(e as LoanOfferEntity).toJson(),
    P2PBeneficiaryEntity => _mapper
        .convert<P2PBeneficiaryEntity, P2PBeneficiaryModel>(
          e as P2PBeneficiaryEntity,
        )
        .toJson(),
    MonthlyCategoryStatsEntity => _mapper
        .convert<MonthlyCategoryStatsEntity, MonthlyCategoryStatsModel>(
          e as MonthlyCategoryStatsEntity,
        )
        .toJson(),
    TransactionDailyStatsEntity => _mapper
        .convert<TransactionDailyStatsEntity, TransactionDailyStatsModel>(
          e as TransactionDailyStatsEntity,
        )
        .toJson(),
    SupportCategoryEntity => _mapper
        .convert<SupportCategoryEntity, SupportCategoryModel>(
          e as SupportCategoryEntity,
        )
        .toJson(),
    SupportArticleEntity => _mapper
        .convert<SupportArticleEntity, SupportArticleModel>(
          e as SupportArticleEntity,
        )
        .toJson(),
    TooltipMessageEntity => _mapper
        .convert<TooltipMessageEntity, TooltipMessageModel>(
          e as TooltipMessageEntity,
        )
        .toJson(),
    CurrencyConvertionEntity => _mapper
        .convert<CurrencyConvertionEntity, CurrencyConversionModel>(
          e as CurrencyConvertionEntity,
        )
        .toJson(),
    CurrencyEntity => _mapper.convert<CurrencyEntity, CurrencyModel>(e as CurrencyEntity).toJson(),
    FxRateEntity => _mapper.convert<FxRateEntity, FxRateModel>(e as FxRateEntity).toJson(),
    BudgetEntity => _mapper.convert<BudgetEntity, BudgetModel>(e as BudgetEntity).toJson(),
    DebitByCategoryEntity => _mapper
        .convert<DebitByCategoryEntity, DebitByCategoryModel>(
          e as DebitByCategoryEntity,
        )
        .toJson(),
    ClientBillAccountReferenceEntity => _mapper
        .convert<ClientBillAccountReferenceEntity, ClientBillAccountReferenceModel>(
          e as ClientBillAccountReferenceEntity,
        )
        .toJson(),
    BillerServiceFieldSelectableItemEntity => _mapper
        .convert<BillerServiceFieldSelectableItemEntity, BillerServiceFieldSelectableItemModel>(
          e as BillerServiceFieldSelectableItemEntity,
        )
        .toJson(),
    BillerServiceFeesConfigEntity => _mapper
        .convert<BillerServiceFeesConfigEntity, BillerServiceFeesConfigModel>(
          e as BillerServiceFeesConfigEntity,
        )
        .toJson(),
    TransactionCategoryEntity => _mapper
        .convert<TransactionCategoryEntity, TransactionCategoryModel>(
          e as TransactionCategoryEntity,
        )
        .toJson(),
    PaymentSubscriptionEntity => _mapper
        .convert<PaymentSubscriptionEntity, PaymentSubscriptionModel>(
          e as PaymentSubscriptionEntity,
        )
        .toJson(),
    MonthlyTransactionsEntity => _mapper
        .convert<MonthlyTransactionsEntity, MonthlyTransactionsModel>(
          e as MonthlyTransactionsEntity,
        )
        .toJson(),
    MonthlyTransactionSummaryEntity => _mapper
        .convert<MonthlyTransactionSummaryEntity, MonthlyTransactionSummaryModel>(
          e as MonthlyTransactionSummaryEntity,
        )
        .toJson(),
    TransactionTagEntity => _mapper
        .convert<TransactionTagEntity, TransactionTagModel>(
          e as TransactionTagEntity,
        )
        .toJson(),
    TransactionEntity => _mapper
        .convert<TransactionEntity, TransactionModel>(
          e as TransactionEntity,
        )
        .toJson(),
    ReferralBonusEntity => _mapper
        .convert<ReferralBonusEntity, ReferralBonusModel>(
          e as ReferralBonusEntity,
        )
        .toJson(),
    InvestCashbackEntity => _mapper
        .convert<InvestCashbackEntity, InvestCashbackModel>(
          e as InvestCashbackEntity,
        )
        .toJson(),
    InvestAccountEntity => _mapper
        .convert<InvestAccountEntity, InvestAccountModel>(
          e as InvestAccountEntity,
        )
        .toJson(),
    InvestProductBalanceEntity => _mapper
        .convert<InvestProductBalanceEntity, InvestProductBalanceModel>(
          e as InvestProductBalanceEntity,
        )
        .toJson(),
    InvestSubscriptionEntity => _mapper
        .convert<InvestSubscriptionEntity, InvestSubscriptionModel>(
          e as InvestSubscriptionEntity,
        )
        .toJson(),
    InvestSellingEntity => _mapper
        .convert<InvestSellingEntity, InvestSellingModel>(
          e as InvestSellingEntity,
        )
        .toJson(),
    InvestProductEntity => _mapper
        .convert<InvestProductEntity, InvestProductModel>(
          e as InvestProductEntity,
        )
        .toJson(),
    InvestProductLiquidativeEntity => _mapper
        .convert<InvestProductLiquidativeEntity, InvestProductLiquidativeModel>(
          e as InvestProductLiquidativeEntity,
        )
        .toJson(),
    InvestProductPerformanceEntity => _mapper
        .convert<InvestProductPerformanceEntity, InvestProductPerformanceModel>(
          e as InvestProductPerformanceEntity,
        )
        .toJson(),
    BillCustomerSubscriptionReferenceEntity => _mapper
        .convert<BillCustomerSubscriptionReferenceEntity, BillCustomerSubscriptionReferenceModel>(
          e as BillCustomerSubscriptionReferenceEntity,
        )
        .toJson(),
    BillerServiceEntity => _mapper
        .convert<BillerServiceEntity, BillerServiceModel>(
          e as BillerServiceEntity,
        )
        .toJson(),
    BillerServiceConfigEntity => _mapper
        .convert<BillerServiceConfigEntity, BillerServiceConfigModel>(
          e as BillerServiceConfigEntity,
        )
        .toJson(),
    BillerServiceFieldEntity => _mapper
        .convert<BillerServiceFieldEntity, BillerServiceFieldModel>(
          e as BillerServiceFieldEntity,
        )
        .toJson(),
    DocumentEntity => _mapper.convert<DocumentEntity, DocumentModel>(e as DocumentEntity).toJson(),
    IbanEntity => _mapper.convert<IbanEntity, IbanModel>(e as IbanEntity).toJson(),
    IbanAgencyEntity => _mapper.convert<IbanAgencyEntity, IbanAgencyModel>(e as IbanAgencyEntity).toJson(),
    BeneficiaryEntity => _mapper.convert<BeneficiaryEntity, BeneficiaryModel>(e as BeneficiaryEntity).toJson(),
    CashInCustomPhoneNumberEntity => _mapper
        .convert<CashInCustomPhoneNumberEntity, CashInCustomPhoneNumberModel>(
          e as CashInCustomPhoneNumberEntity,
        )
        .toJson(),
    EventEntity => _mapper.convert<EventEntity, EventModel>(e as EventEntity).toJson(),
    OmValidatorEntity => _mapper.convert<OmValidatorEntity, OmValidatorModel>(e as OmValidatorEntity).toJson(),
    MomoDepositEntity => _mapper.convert<MomoDepositEntity, MomoDepositModel>(e as MomoDepositEntity).toJson(),
    TransactionFeeEntity => _mapper
        .convert<TransactionFeeEntity, TransactionFeeModel>(
          e as TransactionFeeEntity,
        )
        .toJson(),
    ProductEntity => _mapper.convert<ProductEntity, ProductModel>(e as ProductEntity).toJson(),
    ProductCounterEntity => _mapper
        .convert<ProductCounterEntity, ProductCounterModel>(
          e as ProductCounterEntity,
        )
        .toJson(),
    AccountEntity => _mapper.convert<AccountEntity, AccountModel>(e as AccountEntity).toJson(),
    MonthlyCreditLimitEntity => _mapper
        .convert<MonthlyCreditLimitEntity, MonthlyCreditLimitModel>(
          e as MonthlyCreditLimitEntity,
        )
        .toJson(),
    AccountSubscriptionEntity => _mapper
        .convert<AccountSubscriptionEntity, AccountSubscriptionModel>(
          e as AccountSubscriptionEntity,
        )
        .toJson(),
    SubscriptionCounterEntity => _mapper
        .convert<SubscriptionCounterEntity, SubscriptionCounterModel>(
          e as SubscriptionCounterEntity,
        )
        .toJson(),
    SubscriptionConfigEntity => _mapper
        .convert<SubscriptionConfigEntity, SubscriptionConfigModel>(
          e as SubscriptionConfigEntity,
        )
        .toJson(),
    SubscriptionDebtEntity => _mapper
        .convert<SubscriptionDebtEntity, SubscriptionDebtModel>(
          e as SubscriptionDebtEntity,
        )
        .toJson(),
    ClientChallengesEntity => _mapper
        .convert<ClientChallengesEntity, ClientChallengesModel>(
          e as ClientChallengesEntity,
        )
        .toJson(),
    ChallengeEntity => _mapper.convert<ChallengeEntity, ChallengeModel>(e as ChallengeEntity).toJson(),
    VaultEntity => _mapper.convert<VaultEntity, VaultModel>(e as VaultEntity).toJson(),
    BankServiceEntity => _mapper.convert<BankServiceEntity, BankServiceModel>(e as BankServiceEntity).toJson(),
    MarketEntity => _mapper.convert<MarketEntity, MarketModel>(e as MarketEntity).toJson(),
    BankWireAccountServiceEntity => _mapper
        .convert<BankWireAccountServiceEntity, WireAccountServiceModel>(
          e as BankWireAccountServiceEntity,
        )
        .toJson(),
    ServiceEntity => _mapper.convert<ServiceEntity, ServiceModel>(e as ServiceEntity).toJson(),
    KYCDocumentEntity => _mapper.convert<KYCDocumentEntity, KYCDocumentModel>(e as KYCDocumentEntity).toJson(),
    KYCDocumentNoticeEntity => _mapper
        .convert<KYCDocumentNoticeEntity, KycDocumentNoticeModel>(
          e as KYCDocumentNoticeEntity,
        )
        .toJson(),
    ResetPasscodeChallengeEntity => _mapper
        .convert<ResetPasscodeChallengeEntity, ResetPasscodeChallengeModel>(
          e as ResetPasscodeChallengeEntity,
        )
        .toJson(),
    PhoneNumberResetEntity => _mapper
        .convert<PhoneNumberResetEntity, PhoneNumberResetModel>(
          e as PhoneNumberResetEntity,
        )
        .toJson(),
    LivenessResetRequestStatusEntity => _mapper
        .convert<LivenessResetRequestStatusEntity, LivenessResetRequestStatusModel>(
          e as LivenessResetRequestStatusEntity,
        )
        .toJson(),
    PositionEntity => _mapper.convert<PositionEntity, PositionModel>(e as PositionEntity).toJson(),
    LocationEntity => _mapper.convert<LocationEntity, LocationModel>(e as LocationEntity).toJson(),
    CityEntity => _mapper.convert<CityEntity, CityModel>(e as CityEntity).toJson(),
    OrderEntity => _mapper.convert<OrderEntity, OrderModel>(e as OrderEntity).toJson(),
    OrderProductEntity => _mapper.convert<OrderProductEntity, OrderProductModel>(e as OrderProductEntity).toJson(),
    OrderLocationEntity => _mapper
        .convert<OrderLocationEntity, OrderLocationModel>(
          e as OrderLocationEntity,
        )
        .toJson(),
    DiscountEntity => _mapper.convert<DiscountEntity, DiscountModel>(e as DiscountEntity).toJson(),
    UserEntity => _mapper.convert<UserEntity, UserModel>(e as UserEntity).toJson(),
    DeviceConfigEntity => _mapper.convert<DeviceConfigEntity, DeviceConfigModel>(e as DeviceConfigEntity).toJson(),
    ProfileIdEntity => _mapper.convert<ProfileIdEntity, ProfileIdModel>(e as ProfileIdEntity).toJson(),
    PhoneNumberEntity => _mapper.convert<PhoneNumberEntity, PhoneNumberModel>(e as PhoneNumberEntity).toJson(),
    PhoneNumberKycEntity => _mapper
        .convert<PhoneNumberKycEntity, PhoneNumberKycModel>(
          e as PhoneNumberKycEntity,
        )
        .toJson(),
    PhoneNumberVerificationEntity => _mapper
        .convert<PhoneNumberVerificationEntity, PhoneNumberVerificationModel>(
          e as PhoneNumberVerificationEntity,
        )
        .toJson(),
    GiveawayEntity => _mapper.convert<GiveawayEntity, GiveawayModel>(e as GiveawayEntity).toJson(),
    GiveawayItemEntity => _mapper.convert<GiveawayItemEntity, GiveawayItemModel>(e as GiveawayItemEntity).toJson(),
    CountryEntity => _mapper.convert<CountryEntity, CountryModel>(e as CountryEntity).toJson(),
    SettingEntity => _mapper.convert<SettingEntity, SettingModel>(e as SettingEntity).toJson(),
    KYCDocumentsGroupEntity => _mapper
        .convert<KYCDocumentsGroupEntity, KYCDocumentsGroupModel>(
          e as KYCDocumentsGroupEntity,
        )
        .toJson(),
    SupportSectionEntity => _mapper
        .convert<SupportSectionEntity, SupportSectionModel>(
          e as SupportSectionEntity,
        )
        .toJson(),
    _ => throw Exception('Unknown entity type: ${e.runtimeType}'),
  };
}
