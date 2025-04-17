import 'package:di/di.dart';
import 'package:domain/src/_core/contracts/contracts.dart';
import 'package:domain/src/_core/mappers/domain_auto_mapper.dart';
import 'package:domain/src/_core/types/types.dart';
import 'package:domain/src/accounts/entities/entities.dart';
import 'package:domain/src/accounts/models/models.dart';
import 'package:domain/src/authentication/entities/entities.dart';
import 'package:domain/src/authentication/models/models.dart';
import 'package:domain/src/beneficiaries/entities/entities.dart';
import 'package:domain/src/beneficiaries/models/models.dart';
import 'package:domain/src/bills/entities/entities.dart';
import 'package:domain/src/bills/models/models.dart';
import 'package:domain/src/budget/entities/entities.dart';
import 'package:domain/src/budget/models/models.dart';
import 'package:domain/src/common/entities/entities.dart';
import 'package:domain/src/common/models/models.dart';
import 'package:domain/src/currency/entities/entities.dart';
import 'package:domain/src/currency/models/models.dart';
import 'package:domain/src/deposit/entities/entities.dart';
import 'package:domain/src/deposit/models/models.dart';
import 'package:domain/src/iban/entities/entities.dart';
import 'package:domain/src/iban/models/models.dart';
import 'package:domain/src/invest/entities/entities.dart';
import 'package:domain/src/invest/models/models.dart';
import 'package:domain/src/kyc/entities/entities.dart';
import 'package:domain/src/kyc/models/models.dart';
import 'package:domain/src/loans/entities/loan_eligibility_criteria_entity.dart';
import 'package:domain/src/loans/entities/loan_eligibility_entity.dart';
import 'package:domain/src/loans/entities/loan_entity.dart';
import 'package:domain/src/loans/entities/loan_exclusion_reason_entity.dart';
import 'package:domain/src/loans/entities/loan_extras_entity.dart';
import 'package:domain/src/loans/entities/loan_fees_entity.dart';
import 'package:domain/src/loans/entities/loan_offer_entity.dart';
import 'package:domain/src/loans/entities/loan_product_entity.dart';
import 'package:domain/src/loans/entities/loan_score_criteria_entity.dart';
import 'package:domain/src/loans/entities/loan_score_data_entity.dart';
import 'package:domain/src/loans/entities/loan_score_entity.dart';
import 'package:domain/src/loans/models/loan_eligibility_criteria_model.dart';
import 'package:domain/src/loans/models/loan_eligibility_model.dart';
import 'package:domain/src/loans/models/loan_exclusion_reason_model.dart';
import 'package:domain/src/loans/models/loan_extras_model.dart';
import 'package:domain/src/loans/models/loan_fees_model.dart';
import 'package:domain/src/loans/models/loan_model.dart';
import 'package:domain/src/loans/models/loan_offer_model.dart';
import 'package:domain/src/loans/models/loan_product_model.dart';
import 'package:domain/src/loans/models/loan_score_criteria_model.dart';
import 'package:domain/src/loans/models/loan_score_data_model.dart';
import 'package:domain/src/loans/models/loan_score_model.dart';
import 'package:domain/src/markets/entities/entities.dart';
import 'package:domain/src/markets/models/models.dart';
import 'package:domain/src/me/entities/entities.dart';
import 'package:domain/src/me/models/models.dart';
import 'package:domain/src/messaging_hub/entities/entities.dart';
import 'package:domain/src/messaging_hub/models/models.dart';
import 'package:domain/src/orders/entities/entities.dart';
import 'package:domain/src/orders/models/models.dart';
import 'package:domain/src/passcode/entities/entities.dart';
import 'package:domain/src/passcode/models/models.dart';
import 'package:domain/src/payment_link/entities/entities.dart';
import 'package:domain/src/payment_link/models/models.dart';
import 'package:domain/src/products/entities/entities.dart';
import 'package:domain/src/products/models/models.dart';
import 'package:domain/src/referrals/entities/entities.dart';
import 'package:domain/src/referrals/models/models.dart';
import 'package:domain/src/services/entities/entities.dart';
import 'package:domain/src/services/models/models.dart';
import 'package:domain/src/settings/entities/entities.dart';
import 'package:domain/src/settings/models/models.dart';
import 'package:domain/src/subscriptions/subscriptions.dart';
import 'package:domain/src/support/entities/entities.dart';
import 'package:domain/src/support/models/models.dart';
import 'package:domain/src/transactions/entities/entities.dart';
import 'package:domain/src/transactions/models/models.dart';
import 'package:domain/src/vaults/entities/entities.dart';
import 'package:domain/src/vaults/models/models.dart';

part 'entities_mapper_deserialize.dart';
part 'entities_mapper_serialize.dart';
part 'entity_mapper_serialize.dart';

final _mapper = sl<DomainAutoMapper>();
T? deserialize<T extends BaseEntity>(Map<String, dynamic> json) {
  return switch (T) {
    UserEntity => _mapper.convert<UserModel, T>(UserModel.fromJson(json)),
    DeviceConfigEntity => _mapper.convert<DeviceConfigModel, T>(DeviceConfigModel.fromJson(json)),
    ProfileIdEntity => _mapper.convert<ProfileIdModel, T>(ProfileIdModel.fromJson(json)),
    PhoneNumberEntity => _mapper.convert<PhoneNumberModel, T>(PhoneNumberModel.fromJson(json)),
    PhoneNumberKycEntity => _mapper.convert<PhoneNumberKycModel, T>(PhoneNumberKycModel.fromJson(json)),
    PhoneNumberVerificationEntity => _mapper.convert<PhoneNumberVerificationModel, T>(
        PhoneNumberVerificationModel.fromJson(json),
      ),
    DebitByCategoryEntity => _mapper.convert<DebitByCategoryModel, T>(
        DebitByCategoryModel.fromJson(json),
      ),
    GiveawayEntity => _mapper.convert<GiveawayModel, T>(GiveawayModel.fromJson(json)),
    GiveawayItemEntity => _mapper.convert<GiveawayItemModel, T>(GiveawayItemModel.fromJson(json)),
    CountryEntity => _mapper.convert<CountryModel, T>(CountryModel.fromJson(json)),
    SettingEntity => _mapper.convert<SettingModel, T>(
        SettingModel.fromJson(json),
      ),
    CityEntity => _mapper.convert<CityModel, T>(CityModel.fromJson(json)),
    LocationEntity => _mapper.convert<LocationModel, T>(LocationModel.fromJson(json)),
    PositionEntity => _mapper.convert<PositionModel, T>(PositionModel.fromJson(json)),
    LivenessResetRequestStatusEntity => _mapper.convert<LivenessResetRequestStatusModel, T>(
        LivenessResetRequestStatusModel.fromJson(json),
      ),
    PhoneNumberResetEntity => _mapper.convert<PhoneNumberResetModel, T>(
        PhoneNumberResetModel.fromJson(json),
      ),
    ResetPasscodeChallengeEntity => _mapper.convert<ResetPasscodeChallengeModel, T>(
        ResetPasscodeChallengeModel.fromJson(json),
      ),
    KYCDocumentNoticeEntity => _mapper.convert<KycDocumentNoticeModel, T>(
        KycDocumentNoticeModel.fromJson(json),
      ),
    ServiceEntity => _mapper.convert<ServiceModel, T>(ServiceModel.fromJson(json)),
    KYCDocumentEntity => _mapper.convert<KYCDocumentModel, T>(KYCDocumentModel.fromJson(json)),
    BankWireAccountServiceEntity => _mapper.convert<WireAccountServiceModel, T>(
        WireAccountServiceModel.fromJson(json),
      ),
    MarketEntity => _mapper.convert<MarketModel, T>(MarketModel.fromJson(json)),
    BankServiceEntity => _mapper.convert<BankServiceModel, T>(BankServiceModel.fromJson(json)),
    VaultEntity => _mapper.convert<VaultModel, T>(VaultModel.fromJson(json)),
    ChallengeEntity => _mapper.convert<ChallengeModel, T>(ChallengeModel.fromJson(json)),
    ClientChallengesEntity => _mapper.convert<ClientChallengesModel, T>(
        ClientChallengesModel.fromJson(json),
      ),
    SubscriptionDebtEntity => _mapper.convert<SubscriptionDebtModel, T>(
        SubscriptionDebtModel.fromJson(json),
      ),
    SubscriptionConfigEntity => _mapper.convert<SubscriptionConfigModel, T>(
        SubscriptionConfigModel.fromJson(json),
      ),
    SubscriptionCounterEntity => _mapper.convert<SubscriptionCounterModel, T>(
        SubscriptionCounterModel.fromJson(json),
      ),
    AccountSubscriptionEntity => _mapper.convert<AccountSubscriptionModel, T>(
        AccountSubscriptionModel.fromJson(json),
      ),
    MonthlyCreditLimitEntity => _mapper.convert<MonthlyCreditLimitModel, T>(
        MonthlyCreditLimitModel.fromJson(json),
      ),
    AccountEntity => _mapper.convert<AccountModel, T>(AccountModel.fromJson(json)),
    ProductCounterEntity => _mapper.convert<ProductCounterModel, T>(ProductCounterModel.fromJson(json)),
    ProductEntity => _mapper.convert<ProductModel, T>(ProductModel.fromJson(json)),
    TransactionFeeEntity => _mapper.convert<TransactionFeeModel, T>(TransactionFeeModel.fromJson(json)),
    MomoDepositEntity => _mapper.convert<MomoDepositModel, T>(MomoDepositModel.fromJson(json)),
    OmValidatorEntity => _mapper.convert<OmValidatorModel, T>(OmValidatorModel.fromJson(json)),
    EventEntity => _mapper.convert<EventModel, T>(EventModel.fromJson(json)),
    CashInCustomPhoneNumberEntity => _mapper.convert<CashInCustomPhoneNumberModel, T>(
        CashInCustomPhoneNumberModel.fromJson(json),
      ),
    BeneficiaryEntity => _mapper.convert<BeneficiaryModel, T>(BeneficiaryModel.fromJson(json)),
    IbanAgencyEntity => _mapper.convert<IbanAgencyModel, T>(IbanAgencyModel.fromJson(json)),
    IbanEntity => _mapper.convert<IbanModel, T>(IbanModel.fromJson(json)),
    DocumentEntity => _mapper.convert<DocumentModel, T>(DocumentModel.fromJson(json)),
    BillerServiceFieldEntity => _mapper.convert<BillerServiceFieldModel, T>(
        BillerServiceFieldModel.fromJson(json),
      ),
    BillerServiceConfigEntity => _mapper.convert<BillerServiceConfigModel, T>(
        BillerServiceConfigModel.fromJson(json),
      ),
    BillerServiceEntity => _mapper.convert<BillerServiceModel, T>(BillerServiceModel.fromJson(json)),
    BillCustomerSubscriptionReferenceEntity => _mapper.convert<BillCustomerSubscriptionReferenceModel, T>(
        BillCustomerSubscriptionReferenceModel.fromJson(json),
      ),
    InvestProductPerformanceEntity => _mapper.convert<InvestProductPerformanceModel, T>(
        InvestProductPerformanceModel.fromJson(json),
      ),
    InvestProductLiquidativeEntity => _mapper.convert<InvestProductLiquidativeModel, T>(
        InvestProductLiquidativeModel.fromJson(json),
      ),
    InvestProductEntity => _mapper.convert<InvestProductModel, T>(InvestProductModel.fromJson(json)),
    InvestSellingEntity => _mapper.convert<InvestSellingModel, T>(InvestSellingModel.fromJson(json)),
    InvestSubscriptionEntity => _mapper.convert<InvestSubscriptionModel, T>(
        InvestSubscriptionModel.fromJson(json),
      ),
    InvestProductBalanceEntity => _mapper.convert<InvestProductBalanceModel, T>(
        InvestProductBalanceModel.fromJson(json),
      ),
    InvestAccountEntity => _mapper.convert<InvestAccountModel, T>(InvestAccountModel.fromJson(json)),
    InvestCashbackEntity => _mapper.convert<InvestCashbackModel, T>(InvestCashbackModel.fromJson(json)),
    ReferralBonusEntity => _mapper.convert<ReferralBonusModel, T>(ReferralBonusModel.fromJson(json)),
    TransactionEntity => _mapper.convert<TransactionModel, T>(
        TransactionModel.fromJson(json),
      ),
    TransactionTagEntity => _mapper.convert<TransactionTagModel, T>(TransactionTagModel.fromJson(json)),
    MonthlyTransactionSummaryEntity => _mapper.convert<MonthlyTransactionSummaryModel, T>(
        MonthlyTransactionSummaryModel.fromJson(json),
      ),
    MonthlyTransactionsEntity => _mapper.convert<MonthlyTransactionsModel, T>(
        MonthlyTransactionsModel.fromJson(json),
      ),
    PaymentSubscriptionEntity => _mapper.convert<PaymentSubscriptionModel, T>(
        PaymentSubscriptionModel.fromJson(json),
      ),
    TransactionCategoryEntity => _mapper.convert<TransactionCategoryModel, T>(
        TransactionCategoryModel.fromJson(json),
      ),
    BudgetEntity => _mapper.convert<BudgetModel, T>(BudgetModel.fromJson(json)),
    FxRateEntity => _mapper.convert<FxRateModel, T>(FxRateModel.fromJson(json)),
    CurrencyEntity => _mapper.convert<CurrencyModel, T>(CurrencyModel.fromJson(json)),
    BillerServiceFeesConfigEntity => _mapper.convert<BillerServiceFeesConfigModel, T>(
        BillerServiceFeesConfigModel.fromJson(json),
      ),
    BillerServiceFieldSelectableItemEntity => _mapper.convert<BillerServiceFieldSelectableItemModel, T>(
        BillerServiceFieldSelectableItemModel.fromJson(json),
      ),
    ClientBillAccountReferenceEntity => _mapper.convert<ClientBillAccountReferenceModel, T>(
        ClientBillAccountReferenceModel.fromJson(json),
      ),
    CurrencyConvertionEntity => _mapper.convert<CurrencyConversionModel, T>(
        CurrencyConversionModel.fromJson(json),
      ),
    SupportSectionEntity => _mapper.convert<SupportSectionModel, T>(SupportSectionModel.fromJson(json)),
    KYCDocsRequiredPicsEntity => _mapper.convert<KYCDocsRequiredPicsModel, T>(
        KYCDocsRequiredPicsModel.fromJson(json),
      ),
    KYCDocumentsGroupEntity => _mapper.convert<KYCDocumentsGroupModel, T>(
        KYCDocumentsGroupModel.fromJson(json),
      ),
    SupportArticleEntity => _mapper.convert<SupportArticleModel, T>(SupportArticleModel.fromJson(json)),
    SupportCategoryEntity => _mapper.convert<SupportCategoryModel, T>(SupportCategoryModel.fromJson(json)),
    TooltipMessageEntity => _mapper.convert<TooltipMessageModel, T>(TooltipMessageModel.fromJson(json)),
    TransactionDailyStatsEntity => _mapper.convert<TransactionDailyStatsModel, T>(
        TransactionDailyStatsModel.fromJson(json),
      ),
    MonthlyCategoryStatsEntity => _mapper.convert<MonthlyCategoryStatsModel, T>(
        MonthlyCategoryStatsModel.fromJson(json),
      ),
    P2PBeneficiaryEntity => _mapper.convert<P2PBeneficiaryModel, T>(P2PBeneficiaryModel.fromJson(json)),
    LoanOfferEntity => _mapper.convert<LoanOfferModel, T>(LoanOfferModel.fromJson(json)),
    LoanExtrasEntity => _mapper.convert<LoanExtrasModel, T>(LoanExtrasModel.fromJson(json)),
    LoanEntity => _mapper.convert<LoanModel, T>(LoanModel.fromJson(json)),
    LoanEligibilityCriteriaEntity => _mapper.convert<LoanEligibilityCriteriaModel, T>(
        LoanEligibilityCriteriaModel.fromJson(json),
      ),
    LoanScoreCriteriaEntity => _mapper.convert<LoanScoreCriteriaModel, T>(
        LoanScoreCriteriaModel.fromJson(json),
      ),
    LoanScoreDataEntity => _mapper.convert<LoanScoreDataModel, T>(LoanScoreDataModel.fromJson(json)),
    LoanScoreEntity => _mapper.convert<LoanScoreModel, T>(LoanScoreModel.fromJson(json)),
    LoanFeesEntity => _mapper.convert<LoanFeesModel, T>(LoanFeesModel.fromJson(json)),
    LoanEligibilityEntity => _mapper.convert<LoanEligibilityModel, T>(LoanEligibilityModel.fromJson(json)),
    LoanExclusionReasonEntity => _mapper.convert<LoanExclusionReasonModel, T>(
        LoanExclusionReasonModel.fromJson(json),
      ),
    LoanProductEntity => _mapper.convert<LoanProductModel, T>(LoanProductModel.fromJson(json)),
    RecurringSubscriptionEntity => _mapper.convert<RecurringSubscriptionModel, T>(
        RecurringSubscriptionModel.fromJson(json),
      ),
    ProductPropertyEntity => _mapper.convert<ProductPropertyModel, T>(ProductPropertyModel.fromJson(json)),
    OrderEntity => _mapper.convert<OrderModel, T>(OrderModel.fromJson(json)),
    OrderProductEntity => _mapper.convert<OrderProductModel, T>(OrderProductModel.fromJson(json)),
    OrderLocationEntity => _mapper.convert<OrderLocationModel, T>(OrderLocationModel.fromJson(json)),
    DiscountEntity => _mapper.convert<DiscountModel, T>(DiscountModel.fromJson(json)),
    VaultSavingProductEntity => _mapper.convert<VaultSavingProductModel, T>(
        VaultSavingProductModel.fromJson(json),
      ),
    CompanyEntity => _mapper.convert<CompanyModel, T>(CompanyModel.fromJson(json)),
    FeesEntity => _mapper.convert<FeesModel, T>(FeesModel.fromJson(json)),
    ChargeEntity => _mapper.convert<ChargeModel, T>(ChargeModel.fromJson(json)),
    PaymentLinkTransactionEntity => _mapper.convert<PaymentLinkTransactionModel, T>(
        PaymentLinkTransactionModel.fromJson(json),
      ),
    _ => null,
  };
}
